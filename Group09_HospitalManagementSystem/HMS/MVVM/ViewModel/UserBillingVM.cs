using CommunityToolkit.Mvvm.ComponentModel;
using HMS.MVVM.Model;
using HMS.MVVM.View.MessageWindow;
using Prism.Commands;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;

namespace HMS.MVVM.ViewModel
{
	public partial class UserBillingVM : ObservableObject
	{
		private ObservableCollection<Bill> _billsData = new ObservableCollection<Bill>();

		public ObservableCollection<Bill> BillsData
		{
			get => _billsData;
			set
			{
				if (_billsData != value)
				{
					_billsData = value;
					OnPropertyChanged();
				}
			}
		}

		private DelegateCommand _refreshListCommand;
		public DelegateCommand RefreshListCommand =>
			_refreshListCommand ?? (_refreshListCommand = new DelegateCommand(ExecuteRefreshListCommand));

		void ExecuteRefreshListCommand()
		{
			var messageWindow = new MessageWindow("You clicked refresh");
			messageWindow.ShowDialog();

			Read();
		}

        private string _searchText;

        public string SearchText
        {
            get => _searchText;
            set
            {
                if (_searchText != value)
                {
                    _searchText = value;
                    OnPropertyChanged();
                }
            }
        }

        private DelegateCommand _searchCommand;

        public DelegateCommand SearchCommand =>
            _searchCommand ?? (_searchCommand = new DelegateCommand(ExecuteSearchCommand));

        void ExecuteSearchCommand()
        {
            using (DataContext context = new DataContext())
            {
                _billsData.Clear();

                var query = from bill in context.Bills
                            join patient in context.Patients on bill.PatientId equals patient.Id
                            where patient.FullName.Contains(SearchText)
                            select new Bill
                            {
                                Id = bill.Id,
                                BillAmount = bill.BillAmount,
                                PaymentMode = bill.PaymentMode,
                                Status = bill.Status,
                                PaymentDate = bill.PaymentDate,
                                IsBillSelected = bill.IsBillSelected,
                                PatientId = bill.PatientId,
                                Patient = new Patient
                                {
                                    Id = patient.Id,
                                    FullName = patient.FullName,
                                    Email = patient.Email,
                                    BirthDay = patient.BirthDay,
                                    Phone = patient.Phone,
                                    Gender = patient.Gender,
                                    BloodGroup = patient.BloodGroup,
                                    Address = patient.Address,
                                    Weight = patient.Weight,
                                    Height = patient.Height,
                                    AdmittedDate = patient.AdmittedDate,
                                    IsPatientSelected = patient.IsPatientSelected
                                }
                            };

                foreach (var bill in query)
                {
                    _billsData.Add(bill);
                }
            }
        }

        private DelegateCommand<Bill> _updatePaymentStatusCommand;
        public DelegateCommand<Bill> UpdatePaymentStatusCommand =>
            _updatePaymentStatusCommand ?? (_updatePaymentStatusCommand = new DelegateCommand<Bill>(ExecuteUpdatePaymentStatusCommand));

        void ExecuteUpdatePaymentStatusCommand(Bill parameter)
        {
            if (parameter != null)
            {
                using (DataContext context = new DataContext())
                {
                    Bill bill = context.Bills.Single(x => x.Id == parameter.Id);
                    bill.Status = true; 
                    context.SaveChanges();
                }
                var messageWindow = new MessageWindow($"Payment status for Bill #{parameter.Id} updated to 'Paid'!");
                messageWindow.ShowDialog();

                Read();
            }
        }


        //private void Search()
        //{

        //}

        // Delete prescription command using prism core package
        private DelegateCommand<Bill> _deleteBillCommand;
		public DelegateCommand<Bill> DeleteBillCommand =>
			_deleteBillCommand ?? (_deleteBillCommand = new DelegateCommand<Bill>(ExecuteBillCommand));

		void ExecuteBillCommand(Bill parameter)
		{
			
			Read();
		}

		public UserBillingVM()
		{
			Read();
		}


        public void Read()
        {
            using (DataContext context = new DataContext())
            {
                _billsData.Clear();

                var query = from bill in context.Bills
                            join patient in context.Patients on bill.PatientId equals patient.Id
                            select new Bill
                            {
                                Id = bill.Id,
                                BillAmount = bill.BillAmount,
                                PaymentMode = bill.PaymentMode,
                                Status = bill.Status,
                                PaymentDate = bill.PaymentDate,
                                IsBillSelected = bill.IsBillSelected,
                                PatientId = bill.PatientId,
                                Patient = new Patient
                                {
                                    Id = patient.Id,
                                    FullName = patient.FullName,
                                    Email = patient.Email,
                                    BirthDay = patient.BirthDay,
                                    Phone = patient.Phone,
                                    Gender = patient.Gender,
                                    BloodGroup = patient.BloodGroup,
                                    Address = patient.Address,
                                    Weight = patient.Weight,
                                    Height = patient.Height,
                                    AdmittedDate = patient.AdmittedDate,
                                    IsPatientSelected = patient.IsPatientSelected
                                }
                            };

                foreach (var bill in query)
                {
                    _billsData.Add(bill);
                }
            }
        }

    }
}
