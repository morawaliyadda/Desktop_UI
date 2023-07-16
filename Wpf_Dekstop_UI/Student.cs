using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Media.Imaging;

namespace Wpf_Dekstop_UI
{
    public class Student
    {
        public string DateOfBirth { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string Image { get; set; }
        public double GpaValue { get; set; }

        public string TelephoneNo { get; set;}

    public string ImageURL
        {
            get
            {
                return $"/images/{Image}";
            }
        }


        public Student(string firstName, string lastName, string image, string dateOfBirth , double gpaValue, string telePhoneNo)
        {
            FirstName = firstName;
            LastName = lastName;
            Image = image;
            DateOfBirth = dateOfBirth;
            GpaValue = gpaValue;
            TelephoneNo = telePhoneNo;
        }

        public Student() { }
    }
}
