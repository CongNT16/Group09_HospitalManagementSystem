using CommunityToolkit.Mvvm.ComponentModel;
using HMS.MVVM.View.MessageWindow;
using Prism.Commands;
using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;

namespace HMS.MVVM.ViewModel
{
	public partial class AddAppointmentWindowVM : ObservableObject, ICloseWindows
	{
		// #begin for ICloseWindows
		public Action CloseAction { get; internal set; }
		public Action Close { get; set; }
		// #end

		// observable properties

		[ObservableProperty]
		public string doctorName;

		[ObservableProperty]
		public List<string> doctorNames;

		[ObservableProperty]
		public string dope;

		[ObservableProperty]
		public DateTime appointmentDate;

		// commands

		private DelegateCommand _closeCommand;
		public DelegateCommand CloseCommand =>
			_closeCommand ?? (_closeCommand = new DelegateCommand(ExecuteCloseCommand));

		void ExecuteCloseCommand()
		{
			Close?.Invoke();

		}


		private DelegateCommand _saveCommand;
		public DelegateCommand SaveCommand =>
			_saveCommand ?? (_saveCommand = new DelegateCommand(ExecuteSaveCommand));

        void ExecuteSaveCommand()
        {
            using (DataContext context = new DataContext())
            {
                var selectedDoctor = context.Doctors.FirstOrDefault(x => x.Name == doctorName);
                var selectedPatient = context.Patients.FirstOrDefault(x => x.IsPatientSelected == true);

                if (selectedDoctor != null && selectedPatient != null)
                {
                    context.Appointments.Add(new Model.Appointment
                    {
                        DoctorId = selectedDoctor.Id,
                        PatientId = selectedPatient.Id,
                        AppointedDate = AppointmentDate
                    });
                    context.SaveChanges();
                }
                else
                {
                    // Handle the case where the doctor or patient is not found.
                    // You may want to show an error message or log a message.
                }
            }

            var messageWindow = new MessageWindow("Please click 'Refresh' to see the updated Appointment list");
            messageWindow.ShowDialog();

            Close?.Invoke();
        }




        public AddAppointmentWindowVM()
		{
            DateTime localTime = DateTime.Now;
            string dateString = localTime.ToString("yyyy-MM-dd HH:mm:ss");
            DateTime date = DateTime.ParseExact(dateString, "yyyy-MM-dd HH:mm:ss", CultureInfo.InvariantCulture);
            AppointmentDate = date;

			DoctorNames = new List<string> { };
			using (DataContext context = new DataContext())
			{
				foreach (var doc in context.Doctors)
				{
					DoctorNames.Add(doc.Name);
				}
				DoctorName = DoctorNames[0];
			}

		}

	}
}
