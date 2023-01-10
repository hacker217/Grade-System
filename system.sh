#!/bin/bash
# Starting by making a terminal interface!!!! 
# Leighton L201826100112

funlogin (){
	funcolor black_yellow
	fundate
	cat logo
	read -p " " -t 5
	clear && echo -en "\e[3J"
	cat login
	echo
       	read -p "                    Username: " username
	echo
	read -s -p "                    Password: " password                       
	echo
	read -p " " -t 2

	if [ $username == "admin" ];then
		if [ $password == "admin" ];then
			clear && echo -en "\e[3J"
			fundate
			cat loggedin
			read -s -p "                Welcome Back Admin!!!" -t 5
			clear && echo -en "\e[3J"
			fun0
		else
		        echo	
			echo "############################################################"
			echo "#                   Invalid password!!!!                   #"
			echo "############################################################"
			echo
		fi	

	else
		echo
		echo "^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"
		echo "^                  Invalid username!!!                    ^"
		echo "^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"
		echo
	fi	
}
fun0 (){
	funcolor black_green	
	clear && echo -en "\e[3J"
	fundate
	cat logo
	echo
	echo "=============================================================="
	echo "||                                                          ||"
	echo "||                  STUDENT RECORD MENU                     ||"
	echo "||                                                          ||"
	echo "=============================================================="
	echo "||                                                          ||"
	echo "||                   1. SEARCH                              ||"
	echo "||                   2. ADD                                 ||"
	echo "||                   3. DELETE                              ||"
	echo "||                   4. DISPLAY                             ||"
	echo "||                   H: HELP                                ||"
	echo "||                   Q: QUIT                                ||"
	echo "||                                                          ||"
	echo "=============================================================="
	echo

	choice=(1 2 3 4 'H','Q')
	read -p  "SELECT OPTION: " choice 
	echo
	clear && echo -en "\e[3J"
	if [ $choice = 1 ];then

		fun1

	elif [ $choice = 2 ];then

		fun2

	elif [ $choice = 3 ];then
	
		fun3

	elif [ $choice = 4 ];then	
	
		fun4 

	elif [ $choice = 'H' ];then
	
		fun5

	elif [ $choice = 'Q' ];then
	
		fun6
	else    
		
		clear && echo -en "\e[3J"
		echo
		echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
		echo "@    Invalid input!!! Do you want to try again???      @"
		echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
		echo "#                   Y - to retry                       #"
		echo "#          Otherwise press any key to exit             #"
		echo "########################################################"
		echo
		answer=("Y")
		read -p "Enter your option: " answer

		if [ $answer == "Y" ];then
				
			fun0
			
		else
		        
			funpc
			
		fi
	fi	
}

fun1 () {
	funcolor black_blue
	read -p "AM THE BEST" -t 1.5
	clear && echo -e "\e[3J"
	fundate	
	echo "************************************************************"
	echo "*                     SEARCH MENU                          *"
	echo "************************************************************"
	echo "#                     Search Using:                        #"
	echo "#                   1. Full Name                           #"
	echo "#                   2. Student ID                          #"
	echo "#                   3. Main Menu                           #"
	echo "############################################################"
	echo
	choice=(1 2 3)
	read -p "Enter your option: " choice

	if [ $choice = 1 ];then

		clear && echo -en "\e[3J"
		echo
		echo "########################################################"
		echo "#       Search by either first name or last name       #"
		echo "########################################################"
		echo
		read -p "Enter first or last name: " name
		echo

		if [ $name != /home/lee/Project/student.txt ];then 
			grep -i $name  /home/lee/Project/student.txt
			read -p "Student name Exists" -t 5

		else
			echo Student does not exist!!!
		fi	

		clear && echo -en "\e[3J"
		echo
		echo "########################################################"
		echo "#         Do you want to do the search again???        #"
		echo "#                     (Y) - Yes                        #"
		echo "#                     (N) - NO                         #"
		echo "########################################################"
		echo
		choice=("Y","N")
		read -p "Enter your option: " choice

		if [ $choice = "Y" ];then

			fun1
		
		elif [ $choice = "N" ];then

			read -p "" -t 1.5
			clear && echo -en "\e[3J"
			echo
			echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
			echo "@               What do you want to do???               @"
			echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
			echo "#               1. Return to Search Menu                #"
			echo "#               2. Return to Main Menu                  #"
			echo "#               3. Exit the program                     #"
			echo "#########################################################"
			echo

			choice=(1 2 3)
			read -p "Enter your option: " choice
		
			if [ $choice = 1 ];then
						
				fun1

			elif [ $choice = 2 ];then

				fun0

			elif [ $choice = 3 ];then

				funpc

			else 
				clear && echo -en "\e[3J"
				echo
				echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
				echo "@    Invalid input!!! Do you want to try again???      @"
				echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
				echo "#                   Y - to retry                       #"
				echo "#          Otherwise press any key to exit             #"
				echo "########################################################"
				echo
				answer=("Y")
				read -p "Enter your option: "answer
				if [ $answer == "Y" ];then

					fun1

				else
		   		     		
					funpc	

				fi			
			fi
		else 
			funpc		
		fi
	
	elif [ $choice = 2 ];then

		clear && echo -en "\e[3J"
		echo
		echo "########################################################"
		echo "#                 Search by Student ID                 #"
		echo "########################################################"
		echo
		read -p "Enter Student ID: " id
	        echo

		if [ $id != /home/lee/Project/student.txt ];then

			grep -i $id  /home/lee/Project/student.txt
			read -p "Student ID Exists" -t 5
		else
			echo Student ID Not Found!!! 
		fi
		
		clear && echo -en "\e[3J"
		echo
		echo "########################################################"
		echo "#         Do you want to do the search again???        #"
		echo "#                     (Y) - Yes                        #"
		echo "#                     (N) - NO                         #"
		echo "########################################################"
		echo
		choice=("Y","N")
		read -p "Enter your option: " choice

		if [ $choice = "Y" ];then
		
			fun1

		elif [ $choice = "N" ];then

			echo
			read -p "" -t 1.5
			clear && echo -en "\e[3J"
			echo
			echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
			echo "@               What do you want to do???               @"
			echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
			echo "#               1. Return to Search Menu                #"
			echo "#               2. Return to Main Menu                  #"
			echo "#               3. Exit the program                     #"
			echo "#########################################################"
			echo

			choice=(1 2 3)
			read -p "Enter your option: " choice
	
			if [ $choice = 1 ];then
			
				fun1

			elif [ $choice = 2 ];then

			
				fun0

			elif [ $choice = 3 ];then

				funpc

			else 	
				clear && echo -en "\e[3J"
				echo
				echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
				echo "@    Invalid input!!! Do you want to try again???      @"
				echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
				echo "#                   Y - to retry                       #"
				echo "#          Otherwise press any key to exit             #"
				echo "########################################################"
				echo
				answer=("Y")
				read -p "Enter your option: " answer

				if [ $answer == "Y" ];then
				
					fun1
	
				else
		   	    
					funpc

				fi
	
			fi	

		else
			funpc

		fi 


	elif [ $choice = 3 ];then

		
		fun0


	else 
		clear && echo -en "\e[3J"
		echo
		echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
		echo "@    Invalid input!!! Do you want to try again???      @"
		echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
		echo "#                   Y - to retry                       #"
		echo "#          Otherwise press any key to exit             #"
		echo "########################################################"
		echo
		answer=("Y")
		read -p "Enter your option: " answer

		if [ $answer == "Y" ];then
			
			fun1
			
		else
		       
			funpc

		fi	
	fi
	
}

fun2 () {
	funcolor black_cyan
	read -p "THERES ONLY ONE ME AINT NO EQUIVALENT" -t 1.5
	
	clear && echo -en "\e[3J"
	fundate
	echo "***********************************************************"
	echo "*                      ADD MENU                           *"
	echo "***********************************************************"
	echo "#                       Add by:                           #"
	echo "#            1 - Full Name, Stundent ID & Score           #"
	echo "#            2 -  Return to Main Menu                     #"
	echo "###########################################################"
	echo
	choice=(1,2)
	read -p "Enter your option: " choice
	i=0
	if [ $choice = 1 ];then

		clear && echo -en "\e[3J"
		echo
		echo
		echo "************************************************"
		echo "     How many students do you want to add??    *"
		echo "************************************************"
		echo
		read -p "Enter number of students to be added: " answer
		echo
		if [ $answer -le 5 ];then	

			while read input
				do
					echo $input
					((i++))
					if [ $i == $answer ];then
						break	
					fi	

					done>>student.txt
					echo
					echo
			echo $input has been succefully added		
			echo
			cat student.txt
			echo
			echo
			read -s -p " " -t 7
			echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
			echo "@               What do you want to do???               @"
			echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
			echo "#               1. Return to Add Menu                   #"
			echo "#               2. Return to Main Menu                  #"
			echo "#               3. Exit the program                     #"
			echo "#########################################################"
			echo

			choice=(1 2 3)
			read -p "Enter your option: " choice

			if [ $choice = 1 ];then
		
				fun4

			elif [ $choice = 2 ];then
		
				fun0

			elif [ $choice = 3 ];then

				funpc

			else 
				clear && echo -en "\e[3J"
				echo
				echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
				echo "@    Invalid input!!! Do you want to try again???      @"
				echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
				echo "#                   Y - to retry                       #"
				echo "#          Otherwise press any key to exit             #"
				echo "########################################################"
				echo
				answer=("Y")
				read -p "Enter your option: " answer

				if [ $answer == "Y" ];then
				
					fun4

				else

					funpc	

		fi	

	fi
				
		else			
 
			echo
			echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
			echo "@    Invalid input!!! Do you want to try again???      @"
			echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
			echo "#                   Y - to retry                       #"
			echo "#          Otherwise press any key to exit             #"
			echo "########################################################"
			echo
			answer=("Y")
			read -p "Enter your option: " answer

			if [ $answer == "Y" ];then
					
				fun2
			
			else

				funpc
			
			fi
		fi	
					
	elif [ $choice = 2 ];then

		clear && echo -en "\e[3J"
		fun0
	else 
		clear && echo -en "\e[3J"
		echo
		echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
		echo "@    Invalid input!!! Do you want to try again???      @"
		echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
		echo "#                   Y - to retry                       #"
		echo "#          Otherwise press any key to exit             #"
		echo "########################################################"
		echo
		answer=("Y")
		read -p "Enter your option: " answer

		if [ $answer == "Y" ];then
		
			fun2
			
		else
		       
			funpc

		fi
	fi

}

fun3 () {
	funcolor black_red
	read -p "AM ON MY WAY UP" -t 1.5
	clear && echo -en "\e[3J"
	fundate
	echo "**********************************************************"
	echo "*                   DELETE MENU                          *"
	echo "**********************************************************"
	echo "#                    Delete by:                          #"
	echo "#                  1. Full Name                          #"
	echo "#                  2. Student ID                         #"
	echo "#                  3. Return to Main Menu                #"
	echo "##########################################################"
	echo 
	choice=(1 2 3)
	read -p "Enter your option: " choice 
	
	if [ $choice = 1 ];then

		clear && echo -en "\e[3J"
		echo
		echo
		echo "************************************************"
		echo "   Only one Student can be deleted at a time   *"
		echo "************************************************"
		echo
		read -p "Enter (Y) to continue deletion: " answer
		echo
		if [ $answer == 'Y' ];then

			while read input
			do
				name=$input
				echo $input
				echo
				#((i++))
				#if [ $i == $answer ];then
					#break

					if [ $input != /home/lee/Project/student.txt ];then
					
						echo "**********************************************"
						echo
						grep -i $input /home/lee/Project/student.txt
						echo
						echo "**********************************************"
						echo
						cp student.txt stud.txt	
						grep -i -v $input stud.txt > student.txt
						echo $input has been successfully deleted
						echo
						echo "**********************************************"
						echo
						read -p "I OPENED MY THIRD EYE COZ TWO WERENT ENOUGH " -t 5
						echo
						echo	
						clear && echo -en "\e[3J"
						echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
						echo "@               What do you want to do???               @"
						echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
						echo "#               1. Return to Delete Menu                #"
						echo "#               2. Return to Main Menu                  #"
						echo "#               3. View all Records                     #"
						echo "#               4. Exit the program                     #"
						echo "#########################################################"
						echo
						choice=(1 2 3)
						read -p "Enter your option: " choice

						if [ $choice = 1 ];then
		
							fun3

						elif [ $choice = 2 ];then
		
							fun0

						elif [ $choice = 3 ];then

							fun4
						
						elif [ $choice = 4 ];then
						
							funpc	

						else
						 
							clear && echo -en "\e[3J"
							echo
							echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
							echo "@    Invalid input!!! Do you want to try again???      @"
							echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
							echo "#                   Y - to retry                       #"
							echo "#          Otherwise press any key to exit             #"
							echo "########################################################"
							echo
							answer=("Y")
							read -p "Enter your option: " answer
	
							if [ $answer == "Y" ];then
				
								fun3

							else

								funpc	

							fi
						fi	
							
							
					elif [ $input = /home/lee/Project/student.txt ];then			
						
						echo		
						echo $input does not exist	
						echo	
						echo
						read -p "I OPENED MY THIRD EYE COZ TWO WERENT ENOUGH " -t 5
						echo
						echo	
						clear && echo -en "\e[3J"
						echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
						echo "@               What do you want to do???               @"
						echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
						echo "#               1. Go to the Add Menu                   #"
						echo "#               2. Return to Main Menu                  #"
						echo "#               3. View all Records                     #"
						echo "#               4. Exit the program                     #"
						echo "#########################################################"
						echo
						choice=(1 2 3)
						read -p "Enter your option: " choice

						if [ $choice = 1 ];then
		
							fun2

						elif [ $choice = 2 ];then
		
							fun0

						elif [ $choice = 3 ];then

							fun4
						
						elif [ $choice = 4 ];then
						
							funpc	

						else
						 
							clear && echo -en "\e[3J"
							echo
							echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
							echo "@    Invalid input!!! Do you want to try again???      @"
							echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
							echo "#                   Y - to retry                       #"
							echo "#          Otherwise press any key to exit             #"
							echo "########################################################"
							echo
							answer=("Y")
							read -p "Enter your option: " answer
	
							if [ $answer == "Y" ];then
				
								fun3

							else

								funpc	

							fi	
							
										
						fi

					
					else
					       echo do you undersatnd this code 	

					fi	
				#fi

				done
		
				echo
				echo
		
				echo
				echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
				echo "@               What do you want to do???               @"
				echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
				echo "#               1. Return to Delete Menu                #"
				echo "#               2. Return to Main Menu                  #"
				echo "#               3. Exit the program                     #"
				echo "#########################################################"
				echo

				choice=(1 2 3)
				read -p "Enter your option: " choice

				if [ $choice = 1 ];then
		
					fun3

				elif [ $choice = 2 ];then
			
					fun0

				elif [ $choice = 3 ];then

					funpc

				else 
					clear && echo -en "\e[3J"
					echo
					echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
					echo "@    Invalid input!!! Do you want to try again???      @"
					echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
					echo "#                   Y - to retry                       #"
					echo "#          Otherwise press any key to exit             #"
					echo "########################################################"
					echo
					answer=("Y")
					read -p "Enter your option: " answer
	
					if [ $answer == "Y" ];then
				
						fun3

					else

						funpc	

					fi	

				fi
				
			else			
 
				echo
				echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
				echo "@    Invalid input!!! Do you want to try again???      @"
				echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
				echo "#                   Y - to retry                       #"
				echo "#          Otherwise press any key to exit             #"
				echo "########################################################"
				echo
				answer=("Y")
				read -p "Enter your option: " answer

				if [ $answer == "Y" ];then
					
					fun3
			
				else

					funpc
	
				fi
			fi		


	elif [ $choice = 2 ];then
	
		clear && echo -en "\e[3J"
		echo
		echo
		echo "************************************************"
		echo "   How many student IDs do you want to delete  *"
		echo "************************************************"
		echo
		read -p "Enter number of student IDs to be deleted: " answer
		echo
		if [ $answer == 1 ];then

			while read input
			do
				name=$input
				echo $input
				echo
				

					if [ $input != /home/lee/Project/student.txt ];then
					
						echo "**********************************************"
						echo
						grep -i $input /home/lee/Project/student.txt
						echo
						echo "**********************************************"
						echo
						cp student.txt stud.txt
						grep -i -v $input stud.txt > student.txt
						echo $input has been successfully deleted
						echo
						echo "**********************************************"
						echo
						read -p "I OPENED MY THIRD EYE COZ TWO WERENT ENOUGH " -t 5
						echo
						echo	
						clear && echo -en "\e[3J"
						echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
						echo "@               What do you want to do???               @"
						echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
						echo "#               1. Return to Delete Menu                #"
						echo "#               2. Return to Main Menu                  #"
						echo "#               3. View all Records                     #"
						echo "#               4. Exit the program                     #"
						echo "#########################################################"
						echo
						choice=(1 2 3)
						read -p "Enter your option: " choice

						if [ $choice = 1 ];then
		
							fun3

						elif [ $choice = 2 ];then
		
							fun0

						elif [ $choice = 3 ];then

							fun4
						
						elif [ $choice = 4 ];then
						
							funpc	

						else
						 
							clear && echo -en "\e[3J"
							echo
							echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
							echo "@    Invalid input!!! Do you want to try again???      @"
							echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
							echo "#                   Y - to retry                       #"
							echo "#          Otherwise press any key to exit             #"
							echo "########################################################"
							echo
							answer=("Y")
							read -p "Enter your option: " answer
	
							if [ $answer == "Y" ];then
				
								fun3

							else

								funpc	

							fi
						fi	
							
							
					elif [ $input = /home/lee/Project/student.txt ];then			
						
						echo		
						echo $input does not exist	
						echo	
						echo
						read -p "I OPENED MY THIRD EYE COZ TWO WERENT ENOUGH " -t 5
						echo
						echo	
						clear && echo -en "\e[3J"
						echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
						echo "@               What do you want to do???               @"
						echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
						echo "#               1. Go to the Add Menu                   #"
						echo "#               2. Return to Main Menu                  #"
						echo "#               3. View all Records                     #"
						echo "#               4. Exit the program                     #"
						echo "#########################################################"
						echo
						choice=(1 2 3)
						read -p "Enter your option: " choice

						if [ $choice = 1 ];then
		
							fun2

						elif [ $choice = 2 ];then
		
							fun0

						elif [ $choice = 3 ];then

							fun4
						
						elif [ $choice = 4 ];then
						
							funpc	

						else
						 
							clear && echo -en "\e[3J"
							echo
						echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
							echo "@    Invalid input!!! Do you want to try again???      @"
							echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
							echo "#                   Y - to retry                       #"
							echo "#          Otherwise press any key to exit             #"
							echo "########################################################"
							echo
							answer=("Y")
							read -p "Enter your option: " answer
	
							if [ $answer == "Y" ];then
				
								fun3

							else

								funpc	

							fi	
							
										
						fi

					
					else
					       echo 	nothing

					fi	
				

				done
		
				echo
				echo
		
				echo
				echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
				echo "@               What do you want to do???               @"
				echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
				echo "#               1. Return to Delete Menu                #"
				echo "#               2. Return to Main Menu                  #"
				echo "#               3. Exit the program                     #"
				echo "#########################################################"
				echo

				choice=(1 2 3)
				read -p "Enter your option: " choice

				if [ $choice = 1 ];then
		
					fun3

				elif [ $choice = 2 ];then
			
					fun0

				elif [ $choice = 3 ];then

					funpc

				else 
					clear && echo -en "\e[3J"
					echo
					echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
					echo "@    Invalid input!!! Do you want to try again???      @"
					echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
					echo "#                   Y - to retry                       #"
					echo "#          Otherwise press any key to exit             #"
					echo "########################################################"
					echo
					answer=("Y")
					read -p "Enter your option: " answer
	
					if [ $answer == "Y" ];then
				
						fun3

					else

						funpc	

					fi	

				fi
				
			else			
 
				echo
				echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
				echo "@    Invalid input!!! Do you want to try again???      @"
				echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
				echo "#                   Y - to retry                       #"
				echo "#          Otherwise press any key to exit             #"
				echo "########################################################"
				echo
				answer=("Y")
				read -p "Enter your option: " answer

				if [ $answer == "Y" ];then
					
					fun3
			
				else

					funpc
	
				fi
			fi		

	elif [ $choice = 3 ];then
		
		fun0

	else 
			
		clear && echo -en "\e[3J"
		echo
		echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
		echo "@    Invalid input!!! Do you want to try again???      @"
		echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
		echo "#                   Y - to retry                       #"
		echo "#          Otherwise press any key to exit             #"
		echo "########################################################"
		echo
		answer=("Y")
		read -p "Enter your option: " answer

		if [ $answer == "Y" ];then
			
			fun3

		else

			funpc

		fi

	fi	
}

fun4 () {
	funcolor black_purple
	read -p "MIND SPEAKING THE KNOWLEDGE YEAH I HAD TO REMIND YOU " -t 1.5
	clear && echo -en "\e[3J"
	fundate
	echo "**********************************************************"
	echo "*                    DISPLAY MENU                        *"
	echo "**********************************************************"
	echo "#                1. All Details                          #"
	echo "#                2. Return to Main Menu                  #"
	echo "##########################################################"
	echo 
	choice=(1 2)
	read -p "Enter your option: " choice

	if [ $choice = 1 ];
	then
		clear && echo -en "\e[3J"
		echo
		cat student.txt
		echo
		read -s -p "My third eye just opened coz two weren't sh#t!!!!  " -t 20
		echo
		clear && echo -en "\e[3J"
		echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
		echo "@               What do you want to do???               @"
		echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
		echo "#               1. Return to Display Menu               #"
		echo "#               2. Return to Main Menu                  #"
		echo "#               3. Exit the program                     #"
		echo "#########################################################"
		echo
			
		choice=(1 2 3)
		read -p "Enter your option: " choice

		if [ $choice = 1 ];then
		
			fun4

		elif [ $choice = 2 ];then
		
			fun0

		elif [ $choice = 3 ];then

			funpc

		else 
			clear && echo -en "\e[3J"
			echo
			echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
			echo "@    Invalid input!!! Do you want to try again???      @"
			echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
			echo "#                   Y - to retry                       #"
			echo "#          Otherwise press any key to exit             #"
			echo "########################################################"
			echo
			answer=("Y")
			read -p "Enter you option: " answer

			if [ $answer == "Y" ];then
				
				fun4

			else
				funpc

			fi	
		fi

	elif [ $choice = 2 ];then

		fun0

	else 
		clear && echo -en "\e[3J"
		echo
		echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
		echo "@    Invalid input!!! Do you want to try again???      @"
		echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
		echo "#                   Y - to retry                       #"
		echo "#          Otherwise press any key to exit             #"
		echo "########################################################"
		echo
		answer=("Y")
		read -p "Enter your option: " answer

		if [ $answer == "Y" ];then
				
			fun4

		else
		        funpc

		fi
	fi			
}

fun5 () {
	#funcolor white_black
	read -p "HOW THE FUCK DID I WAKE UP FROM A DREAM TO A NIGHTMARE " -t 1.5
	clear && echo -en "\e[3J"
	fundate
	echo "**********************************************************"
	echo "*                      HELP MENU                         *"
	echo "**********************************************************"
	echo "#               1. Show instructions                     #"
	echo "#               2. Return to Main Menu                   #"
	echo "##########################################################"
	echo
	choice=(1 2)
	read -p "Enter your option: " choice 

	if [ $choice = 1 ];
	then
		clear && echo -en "\e[3J"	
		cat instructions.txt
		echo
		echo
		read -s -p "                     NOTHGIEL                  " -t 20
		echo
		clear && echo -en "\e[3J"
		echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
		echo "@               What do you want to do???               @"
		echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
		echo "#               1. Return to Help Menu                  #"
		echo "#               2. Return to Main Menu                  #"
		echo "#               3. Exit the program                     #"
		echo "#########################################################"
		echo

		choice=(1 2 3)
		read -p "Enter your option: " choice

		if [ $choice = 1 ];then

			fun5

		elif [ $choice = 2 ];then

			fun0

		elif [ $choice = 3 ];then 

			funpc

		else 
			clear && echo -en "\e[3J"
			echo
			echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
			echo "@    Invalid input!!! Do you want to try again???      @"
			echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
			echo "#                   Y - to retry                       #"
	 		echo "#          Otherwise press any key to exit             #"
			echo "########################################################"
			echo
			answer=("Y")
			read -p "Enter your option: " answer

			if [ $answer == "Y" ];then

				fun5

			else

		   	     funpc

			fi

		fi
		
	elif [ $choice = 2 ];then

		fun0
	
	else
	        clear && echo -en "\e[3J"
		echo	
		echo "######################################################"
		echo "#     Invalid input! Do you want to try again!!!     #"
		echo "######################################################"
		echo "#              Y - to retry                          #"
	        echo "#              M - back to Main Menu                 #"
		echo "#              E - to exit                           #"
		echo "######################################################"
		answer=('Y','M','E')
		read -p "Enter your option: " answer
		
		if [ $answer = 'Y' ];then

			fun5

		elif [ $answer = 'M' ];then

			fun0

		elif [ $answer = 'E' ];then

			funpc

		else
			
			clear && echo -en "\e[3J"
			echo
			echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
			echo "@    Invalid input!!! Do you want to try again???      @"
			echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
			echo "#                   Y - to retry                       #"
			echo "#          Otherwise press any key to exit             #"
			echo "########################################################"
			echo
			answer=("Y")
			read -p "Enter your option: " answer
	
				if [ $answer == "Y" ];then

			
					fun6

				else
		
					funpc
	
				fi
			

		fi		

	fi		
}

fun6 () {
	funcolor black_grey	
	read -p "TRYNA MAKE BETTER DECISIONS" -t 1.5
	clear && echo -en "\e[3J"
	fundate
	echo "==========================================================="
	echo "||                                                       ||"
	echo "||                       QUIT                            ||"
        echo "||                                                       ||"
	echo "==========================================================="
	echo "*           ARE YOU SURE YOU WANT TO EXIT???              *"
	echo "*                  (Y) - YES to exit                      *"
        echo "*                  (N) - NO back to main menu             *"
	echo "***********************************************************"
	echo
	choice=("Y","N")
	read -p "Enter your option: " choice
	if [ $choice == "Y" ];then

		funpc
		
	elif [ $choice == "N" ];then

		fun0	
	
	else

		clear && echo -en "\e[3J"
		echo
		echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
		echo "@    Invalid input!!! Do you want to try again???      @"
		echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
		echo "#                   Y - to retry                       #"
		echo "#          Otherwise press any key to exit             #"
		echo "########################################################"
		echo
		answer=("Y")
		read -p "Enter your option: " answer

		if [ $answer == "Y" ];then

			fun6	

		else

			funpc	

		fi

	fi
}
funcolor (){
	case $1 in 
		black_white)black background, white foreground
			echo -e "\033[40;01;37m"
			;;

		black_green) black background, green foreground
			echo -e "\033[40;01;32m"
			;;

		black_cyan) black background, cyan foreground 
			echo -e "\033[40;01;36m"
			;;

		black_yellow) black background, yellow foreground
			echo -e "\033[40;01;33m"
			;;

		black_blue) black background, blue foreground
			echo -e "\033[40;01;34m"
			;;

		black_purple) black background, purple foreground
			echo -e "\033[40;01;35m"
			;;
		
		black_red) black background,red foreground
			echo -e "\033[31;01;40m"
			;;	
			
		black_grey) black background,grey foreground
			echo -e "\033[40;01;37m"
			;;			

		esac	
}


funpc (){
	clear && echo -en "\e[3J"
	fundate	
	echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@"
	echo "@     PROGRAM CLOSED!!	@"
	echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@"
	echo	
	read -p " DONT LET THE DEVIL" -t 2
	read -p " TAKE THE GOOD SPIRIT FROM YOU" -t 2
	read -p " JUST PRAY ON IT" -t 2
	read -p " STAY FOCUSED" -t 2
	read -p " KEEP YOUR VISION TURNED UP!" -t 4
	echo
	clear && echo -en "\e[3J"	
}

fundate (){
	clear && echo -en "\e[3J"
	echo
	date
	echo
}
funlogin
