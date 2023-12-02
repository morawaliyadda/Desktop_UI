using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using Microsoft.Win32;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Media.Imaging;
using System.Windows;

namespace Wpf_Dekstop_UI
{
    public partial class AddWindowVM : ObservableObject
    {
        [ObservableProperty]
        public string? firstName;

        [ObservableProperty]
        public string? lastName;

        [ObservableProperty]
        public string? dateOfBirth;

        [ObservableProperty]
        public double gpaValue;

        [ObservableProperty]
        public string imageNo;

        [ObservableProperty]
        public string telephoneNo;


        public AddWindowVM(Student Std)
        {
            Std1 = Std;

            firstName = Std1.FirstName;
            lastName = Std1.LastName;
            gpaValue = Std1.GpaValue;
            dateOfBirth = Std1.DateOfBirth;
            telephoneNo = Std1.TelephoneNo;
            imageNo = Std1.Image;

        }

        public AddWindowVM() 
        { 
        }

        

        public Student Std1 { get; private set; }
        public Action CloseWindow { get; internal set; }

        [RelayCommand]
        public void AddStudent()
        {
            if (gpaValue < 0.0 || gpaValue > 4.0)
            {
                MessageBox.Show("GPA value should be between 0 and 4.", "Error");
                return;
            }
            if (Std1 == null)
            {
                Std1 = new Student()
                {
                    FirstName = firstName,
                    LastName = lastName,
                    Image = imageNo,
                    DateOfBirth = dateOfBirth,
                    TelephoneNo = telephoneNo,
                    GpaValue = gpaValue

                };
            }
            else
            {
                Std1.FirstName = firstName;
                Std1.LastName = lastName;
                Std1.Image = imageNo;
                Std1.DateOfBirth = dateOfBirth;
                Std1.TelephoneNo = telephoneNo;
                Std1.GpaValue = gpaValue;
            }
            if (Std1.FirstName != null)
            {

                CloseWindow();
            }

            this.CloseWindow();
           

           





        }
    }
}
