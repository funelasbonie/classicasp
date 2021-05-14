<%
    Response.Write(NameMonth(12))
    Call ClapCounter("CCClaClClap!Clap!ClClClap!")
    Response.Write(DoubleLetters("munchkin"))
    Call RepeatString("cherry", 2)
    Response.Write(BoolToString(False))
    Call FileName(":C/asd/asda/sasd.png")
    
    ' Exercise 1
    Function NameMonth(mon)    
        dim month       
        month = Array("January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December")                        
        if mon >= 1 and mon <= 12 then
            NameMonth = month(mon - 1)
        else 
            NameMonth = "Unknown Month"
        end if
    End Function

    ' Exercise 2
    Sub ClapCounter(sound)
        dim counter
        counter = 0                  
        i = 1
        While i <= Len(sound)                     
            If Mid(sound, i , 1) = "C" Then
                counter = counter + 1
            End If                                
            i = i + 1
        Wend
        Response.Write( sound & "<br/><h1>Clap Count: " & counter & "</h1>")
    End Sub

    ' Exercise 3
    Function DoubleLetters(word)
        checker = false
        i = 1
        While i < Len(word)                                    
            j = i + 1
            If Mid(word, i, 1) = Mid(word, j, 1) Then
                checker = true
            End If
            i = i + 1
        Wend            
        DoubleLetters = checker
    End Function  

    ' Exercise 4
    Sub RepeatString(word, repeat)
        i = 0
        while i < repeat
            Response.Write(word)
            i = i + 1
        wend        
    End Sub

    ' Exercise 5
    Function BoolToString(word)
        If word = true Then
            BoolToString = "True"
        Else 
            BoolToString = "False"
        End If
    End Function

    ' Exercise 6
    Sub FileName(url)   
        dim fileName, fileChecker(1), j(1)            
        counter = 0
        i = 1
        while i <= Len(url)
            if Mid(url, i, 1) = "/" then
                counter = counter + 1
            end if
            i = i + 1
        wend

        if counter = 0 then                                                                      
            fileChecker(0) = 0

            j(0) = 1
            while j(0) < Len(url) 
                if Mid(url, j(0), 1) = "." then
                    fileChecker(0) = fileChecker(0) + 1
                end if
                j(0) = j(0) + 1
            wend        

            if fileChecker(0) <> 1 then
                Response.Write("Invalid Path/Url")
            else
                Response.Write(url)
            end if
            
        else                            
            fileName = Right(url, InStr(StrReverse(url), "/") - 1)                          
            fileChecker(1) = 0
            j(1) = 1
            while j(1) < Len(fileName) 
                if Mid(fileName, j(1), 1) = "." then
                    fileChecker(1) = fileChecker(1) + 1
                end if
                j(1) = j(1) + 1
            wend        

            if fileChecker(1) <> 1 then
                Response.Write("Invalid Path/Url")
            else
                Response.Write(fileName)
            end if                                                
        end if                        
    End Sub

    

%>