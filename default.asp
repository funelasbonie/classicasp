<!-- #include file= "header.asp" -->
    <%
        ' Call FreeCoffeeCups(213)
        Response.Write(ReturnSomething("Bonie"))
        

        Sub FreeCoffeeCups(cc)
            dim freeCount 
            freeCount = cc / 6
            Response.Write(freeCount + cc)
        End Sub        

        Function ReturnSomething(something)
            dim msg
            msg = "Something"
            ReturnSomething = msg & " " & something
        End Function
    %>    
<!-- #include file= "footer.asp" -->    