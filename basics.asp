<!-- #include file= "header.asp" -->
     
    <!-- Comment -->
    <%  
        'Comment
    %>

    <!-- Syntax -->
    <%            
        'Response.Write("Hello World ")        
    %>        
    <%        
        '= "Hello"
    %>

    <!-- Embeded HTML -->
    <%
        'Response.Write("<br/>")
    %>

    <!-- Concatenate -->
    <%            
        'Response.Write("Bonie " & "Funelas")            
    %>

    <!-- Variables -->
    <%           
        Dim fname, lname
        fname =  "Bonie" 
        lname = "Funelas"

        Dim ass
        ass = "ass"

        Dim x(3)
        x(0) = "One"
        x(1) = "Two"
        x(2) = "Three"
        x(3) = "Four"

        Dim xy(1, 1)
        xy(0, 0) = "multidimensional 1"
        xy(0, 1) = "multidimensional 2"
        xy(1, 0) = "multidimensional 3"
        xy(1, 1) = "multidimensional 4"

        
        Response.Write(fname & " " & lname & "<br/>")            
        Response.Write(ass & "<br/>")
        Response.Write(x(0) & " " & x(1) & " " & x(2) & " " & x(3))            
        Response.Write("<br/>")
        Response.Write(xy(0, 0) & " " & xy(0, 1) & " " & xy(1, 0) & " " & xy(1, 1))
    %>

<!-- #include file= "footer.asp" --> 