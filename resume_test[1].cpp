#include <iostream>
#include <fstream>
using namespace std;
main() {
	char a[50],ch;
	fstream bio;
 string NAME,COURCE, POSITION,EMAIL_ID,Address,Date,Sex,Merrital,Nationality,hobbies,Strength,Language;
 int age=0,HIGH_SCHOOL_PERCENTAGE, HIGH_SECONDARY_SCHOOL_PERCENTAGE;
 cout << " ======= Resume Maker =============";
 cout << "\n\n";
 cout << "Enter the name of the candidate  : ";
 getline(cin,NAME);
 cout << "Enter the age of the candidate  : ";
 cin >> age;
cout<<"enter date of birth: ";
	cin.getline(a,50);
	bio<<"Date Of Birth   : "<<a<<endl;
	cout<<"\n\n";
 //cout << " MOBILE NUMBER  : ";
 //cin >> MOBILE_NO;
 cout<<"enter sex : ";
	cin.getline(a,50);
	bio<<"Sex             : "<<a<<endl;
	cout<<"enter merrital status : ";
	cin.getline(a,50);
	bio<<"Merrital Status : "<<a<<endl;
		cout<<"enter nationality: ";
	cin.getline(a,50);
	bio<<"Nationality     : "<<a<<endl;
		cout<<"enter hobbies : ";
	cin.getline(a,50);
	bio<<"Hobbies         : "<<a<<endl;
	cout<<"enter strength : ";
	cin.getline(a,50);
	bio<<"Strength        : "<<a<<endl;
	cout<<"enter language : ";
	cin.getline(a,50);
	bio<<"Language        : "<<a<<endl;
 cout << "Enter the course of the candidate  : ";
cin.ignore(80,'\n');
getline(cin,COURCE);
 cout << "Enter the HIGH _SCHOOL_PERCENTAGE : ";
 //getline(cin,HIGH_SCHOOL_PERCENTAGE);
 cin>>HIGH_SCHOOL_PERCENTAGE;
 cout << "Enter the  HIGH_SECONDARY _SCHOOL_PERCENTAGE : ";
 //getline(cin, HIGH_SECONDARY_SCHOOL_PERCENTAGE);
 cin>>HIGH_SECONDARY_SCHOOL_PERCENTAGE;
 //cout << "Enter the Address : ";
 
// getline(cin,Address);

 
 cout << "\n\n";
 cout << "\t RECORDS HAS BEEN SAVED IN THE DATABASE";
ofstream my_file("resume.txt");
my_file << "\n\n\t\t ==== RESUME ==== ";
my_file << "\n\n";
my_file << "\n \t Name : " << NAME;
my_file << "\n \t Age: " <<age;
//my_file << "\n \t mobile: " <<MOBILE_NO ;
my_file <<"\n \t Date Of Birth :"<< Date;
my_file <<"\n \t Sex :" << Sex;
my_file <<"\n \t Merrital Status :"<< Merrital;
my_file <<"\n \t Nationality :"<< Nationality;
my_file <<"\n \t hobbies :"<< hobbies;
my_file <<"\n \t Strength :"<< Strength;
my_file <<"\n \t Language :"<< Language;
my_file << "\n \t Course: " <<COURCE;
my_file << "\n \t HIGH _SCHOOL_PERCENTAGE :" <<HIGH_SCHOOL_PERCENTAGE;
my_file << "\n \t :HIGH_SECONDARY _SCHOOL_PERCENTAGE " <<HIGH_SECONDARY_SCHOOL_PERCENTAGE;
//my_file << "\n \t Address : " <<Address;
my_file.close();
return 0;
}

