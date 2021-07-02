using System;
using System.Collections.Generic;
using System.Text;
using System.ComponentModel;
using System.Runtime.CompilerServices;
using System.Windows.Input;
using calculator2.Commands;
using System.Windows;
using System.Data;

namespace calculator2.ViewModels
{
    public class MainWindowViewModel : INotifyPropertyChanged
    {
        public event PropertyChangedEventHandler PropertyChanged;
        private List<string> _availableOperations = new List<string> { "+", "-", "/", "*" };
        private DataTable _dataTable = new DataTable();
        private bool _isLastSignAnOperation;
        private bool _isMoreComa = false;

        public void OnPropertyChanged([CallerMemberName] string propertyName = null)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }
        public ICommand AddNumberCommand { get; set; }
        public ICommand AddComaCommand { get; set; }
        public ICommand AddOperationCommand { get; set; }
        public ICommand ClearScreenCommand { get; set; }
        public ICommand GetResultCommand { get; set; }
        public MainWindowViewModel()
        {
            ScreenVal = "0";
            AddNumberCommand = new RelayCommand(AddNumber);
            AddComaCommand = new RelayCommand(AddComa, CanAddComa);
            AddOperationCommand = new RelayCommand(AddOperation, CanAddOperation);
            ClearScreenCommand = new RelayCommand(ClearScreen);
            GetResultCommand = new RelayCommand(GetResult, CanGetResult);
        }

        private bool CanGetResult(object obj) => !_isLastSignAnOperation;
        private bool CanAddOperation(object obj) => !_isLastSignAnOperation;
        private bool CanAddComa(object obj) => !_isMoreComa;
        private void AddNumber(object obj)
        {
            var number = obj as string;
            if (ScreenVal == "0")
            {
                ScreenVal = string.Empty;
            }
            

            ScreenVal += number;

            _isLastSignAnOperation = false;
        }

        private void AddComa(object obj)
        {
            var coma = obj as string;
            
            if(coma == "," && !_availableOperations.Contains(ScreenVal.Substring(ScreenVal.Length - 1)))
            {
                coma = ",";
                _isMoreComa = true;
            }
            else if ((coma == "," && _availableOperations.Contains(ScreenVal.Substring(ScreenVal.Length - 1))) || (coma == "," && ScreenVal == string.Empty))
            {
                coma = "0,";
                _isMoreComa = true;
            }

            ScreenVal += coma;
        }

        private void AddOperation(object obj)
        {
            var operation = obj as string;

            ScreenVal += operation;

            _isLastSignAnOperation = true;
            _isMoreComa = false;
        }

        private void ClearScreen(object obj)
        {
            ScreenVal = "0";

            _isLastSignAnOperation = false;
            _isMoreComa = false;
        }

        private void GetResult(object obj)
        {
            var result = Math.Round(Convert.ToDouble(_dataTable.Compute(ScreenVal.Replace(",","."), "")), 2);
            ScreenVal = result.ToString();
            
            _isMoreComa = true;
                
            
            
        }

        private string _screenVal;
        public string ScreenVal
        {
            get { return _screenVal; }
            set
            {
                _screenVal = value;
                OnPropertyChanged();
            }
        }

        
        
    }
}
