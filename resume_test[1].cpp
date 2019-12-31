#include <iostream>
#include <fstream>
using namespace std;
main() {
 string NAME,COURCE, POSITION,EMAIL_ID,Address;
 int age=0,HIGH_SCHOOL_PERCENTAGE, HIGH_SECONDARY_SCHOOL_PERCENTAGE;
 cout << " ======= Resume Maker =============";
 cout << "\n\n";
 cout << "Enter the name of the candidate  : ";
 getline(cin,NAME);
 cout << "Enter the age of the candidate  : ";
 cin >> age;
 //cout << " MOBILE NUMBER  : ";
// cin >> MOBILE_NO;
 cout << "Enter the course of the candidate  : ";
cin.ignore(80,'\n');
getline(cin,COURCE);
 cout << "Enter the HIGH _SCHOOL_PERCENTAGE : ";
 //getline(cin,HIGH_SCHOOL_PERCENTAGE);
 cin>>HIGH_SCHOOL_PERCENTAGE;
 cout << "Enter the  HIGH_SECONDARY _SCHOOL_PERCENTAGE : ";
 //getline(cin, HIGH_SECONDARY_SCHOOL_PERCENTAGE);
 cin>>HIGH_SECONDARY_SCHOOL_PERCENTAGE;
 cout << "Enter the Address : ";
 
 getline(cin,Address);
 cout << "\n\n";
 cout << "\t RECORDS HAS BEEN SAVED IN THE DATABASE";
ofstream my_file("resume.txt");
my_file << "\n\n\t\t ==== RESUME ==== ";
my_file << "\n\n";
my_file << "\n \t Name : " << NAME;
my_file << "\n \t Age: " <<age;
//my_file << "\n \t mobile: " <<MOBILE_NO ;
my_file << "\n \t Course: " <<COURCE;
my_file << "\n \t HIGH _SCHOOL_PERCENTAGE :" <<HIGH_SCHOOL_PERCENTAGE;
my_file << "\n \t :HIGH_SECONDARY _SCHOOL_PERCENTAGE " <<HIGH_SECONDARY_SCHOOL_PERCENTAGE;
my_file << "\n \t Address : " <<Address;
my_file.close();
return 0;
}

