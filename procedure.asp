<!-- #include file= "header.asp" -->
    <%
        Call SampleSub(3, 3)
        Response.Write("<br/>")
        Response.Write(SampleFunction(5, 5))
        Response.Write("<br/>")
        Call IfThenSample(9)
        Response.Write("<br/>")
        'Call ForNextLoopSample()
        
        Sub SampleSub(x, y) 
            Dim ans
            ans = x * y            
            Response.Write(ans)
        End Sub 

        Function SampleFunction(x, y)
            Dim ans 
            ans = x * y        
            SampleFunction = ans    
        End Function

        Sub IfThenSample(x)
            If x >= 5 Then
                Response.Write("High Number")            
            ElseIf x <= 4 Then  
                Response.Write("Low Number")
            Else 
                Response.Write("Unknown Number")
            End If            
        End Sub

        Sub ForNextLoopSample()
            For x=1 to 100
                Response.Write(x & "<br/>")
            Next
                x + 1
        End Sub
    %>
<!-- #include file= "footer.asp" -->