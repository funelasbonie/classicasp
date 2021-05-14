<!-- #include file= "header.asp" -->
    <%
        Response.Write("<i>")
        Call isSeven(7)
        Response.Write("</i>")
        Response.Write("<br />")
        Response.Write("<b>" & profitableGamble(0.9, 3, 2) & "</b>")

        Sub isSeven(num)
            if num = 7 then
                Response.Write(true)
            else
                Response.Write(false)
            end if
        End Sub

        Function profitableGamble(prod, prize, pay)
            dim sum
            sum = prod * prize
            if sum > pay then
                profitableGamble = true
            else
                profitableGamble = false
            end if
        
        End Function
    %>    
<!-- #include file= "footer.asp" -->    
