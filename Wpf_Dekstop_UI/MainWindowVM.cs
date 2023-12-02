using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Net.NetworkInformation;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Media.Imaging;
using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;


namespace Wpf_Dekstop_UI
{
    public partial class MainWindowVM : ObservableObject
    {
      
        [ObservableProperty]
        public ObservableCollection<Student> students;
        [ObservableProperty]
        public Student selected = null;


        [RelayCommand]
        public void AddStudent()
        {
            var person = new AddWindowVM();
            AddWindow window = new AddWindow(person);
            window.ShowDialog();
            
            if (person.Std1.FirstName != null)
            {
                students.Add(person.Std1);
            }
           
        }

        [RelayCommand]
        public void DeleteStudent()
        {
            if (selected != null)
            {
                students.Remove(selected);
            }
            else
            {
                MessageBox.Show("Select the Student that you want to Delete.", "Error ! ");

            }
        }

        [RelayCommand]
        public void EditStudent()
        {
            if (selected != null)
            {
                var edit = new AddWindowVM(selected);
                var window = new AddWindow(edit);
                window.ShowDialog();

                int position = students.IndexOf(selected);
                students.RemoveAt(position);
                students.Insert(position, edit.Std1);
            }
            else
            {
                MessageBox.Show("Select the Student that you want to Edit.", "Error ! ");
            }

        }

        public MainWindowVM()
        {
            students = new ObservableCollection<Student>();


            students.Add(new Student("Hansani", "Sithara", "1.png", "2000.08.07", 3.3, "0772222333"));
            students.Add(new Student("Nethmi", "Kaveesha", "2.png", "2001.09.10", 3.2, "0769997766"));
            students.Add(new Student("Lahiru", "Perera  ", "3.png", "1999.10.02", 3.4, "0715566444"));
            students.Add(new Student("Kavidu", "Silva   ", "4.png", "2000.12.12", 3.1, "0723339887"));
            students.Add(new Student("Malithi", "Nirasha", "5.png", "2001.04.16", 3.5, "0745556633"));
            students.Add(new Student("Sanduni", "Mahesha", "6.png", "1999.03.20", 3.4, "0789994402"));


        }
    }
}
