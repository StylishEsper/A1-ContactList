       identification division.
       program-id. Program1 as "A1_ContactList.Program1".
       date-written. 2021-01-13.
       author. Ahmed Butt.

       environment division.
       configuration section.

       input-output section.
       file-control.

           select output-file
               assign to "../../../A1-ContactList/A1-ContactList.out"
               organization is line sequential.

       data division.
       file section.

       fd output-file
           data record is output-line
           record contains 49 characters.

       01 output-line pic x(49).

       working-storage section.

       01 ws-heading pic x(49) VALUE "            MAFD 4202 Contact List".

       01 ws-contact1.
         05 ws-name1 pic x(10).
         05 ws-email1 pic x(27).
         05 ws-phone1 pic x(12).

       01 ws-contact2.
         05 ws-name2 pic x(9).
         05 ws-email2 pic x(28).
         05 ws-phone2 pic x(12).

       01 ws-contact3.
         05 ws-name3 pic x(9).
         05 ws-email3 pic x(28).
         05 ws-phone3 pic x(12).


       procedure division.
       000-main.

           open output output-file.

           move "Ahmed Butt"
             to ws-name1.
           move "   ahmed.butt@dcmail.ca    "
             to ws-email1.
           move "647-472-3431"
             to ws-phone1.

           move "Mary Bell"
             to ws-name2.
           move "    mary.bell@dcmail.com     "
             to ws-email2.
           move "416-773-2342"
             to ws-phone2.

           move "Ed Bigalo"
             to ws-name3.
           move "    ed.bigalo@dcmail.com     "
             to ws-email3.
           move "289-230-1231"
             to ws-phone3.


           display "".
           display ws-heading.
           display "".
           display ws-contact1.
           display ws-contact2.
           display ws-contact3.

           write output-line from "".
           write output-line from ws-heading.
           write output-line from "".
           write output-line from ws-contact1.
           write output-line from ws-contact2.
           write output-line from ws-contact3.

           close output-file.

           accept return-code.

           goback.
           
       end program Program1.
       