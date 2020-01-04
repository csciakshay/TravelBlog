<%@ Page Title="" Language="VB" MasterPageFile="~/MainUserMaster.master" AutoEventWireup="false" CodeFile="Home.aspx.vb" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="">
             <div class="grid">
      <asp:DataList ID="dlProducts" runat="server" RepeatColumns="3" >
     
       <ItemTemplate>
        <figure class="single-item-effect">
						
                            <asp:Image ID="imagesLabel" runat="server" ImageUrl ='<%# Eval("imagePath") %>' alt="img01" />
							<figcaption>
								<div class="figcaption-border">
									<h2><%# Eval("subject")%> by <%# Eval("UserId")%></h2>
									<p><%# Eval("description")%></p>
									<a href='details.aspx?id=<%# Eval("TravelId") %>'><%# Eval("subject")%></a>
									<div class="figure-overlay"></div>
								</div>
							</figcaption>												
						</figure>
        </ItemTemplate>
    
    </asp:DataList>
     </div>
            </div>
						<!--<figure class="single-item-effect big las-vegas">
							<img src="upload/monitors-process-synchronization-operating-systems-OS-1.jpg" alt="img01"/>
							<figcaption>
								<div class="figcaption-border">
									<h2>Know how to <span>live</span></h2>
									<p>In Vegas you can have the best time</p>
									<a href="single.html">View more</a>
									<div class="figure-overlay"></div>
								</div>
							</figcaption>												
						</figure>
						<figure class="single-item-effect small wild">
							<img src="upload/monitors-process-synchronization-operating-systems-OS-1.jpg" alt="img01"/>
							<figcaption>
								<div class="figcaption-border">
									<h2>Life <span>Begins</span></h2>
									<p>At the end of your comfort zone</p>
									<a href="single.html">View more</a>
									<div class="figure-overlay"></div>
								</div>
							</figcaption>												
						</figure>
						<figure class="single-item-effect small los-angeles">
							<img src="upload/monitors-process-synchronization-operating-systems-OS-1.jpg" alt="img01"/>
							<figcaption>
								<div class="figcaption-border">
									<h2>If L.A. <span>falls</span></h2>
									<p>The country falls</p>
									<a href="single.html">View more</a>
									<div class="figure-overlay"></div>	
								</div>
							</figcaption>											
						</figure>-->
               
</asp:Content>

