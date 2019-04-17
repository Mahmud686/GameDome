<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="GameDome.Home" EnableEventValidation="true" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 
    <div class="header_slide">
			<div class="header_bottom_left">				
				<div class="categories">
				  <ul>
				  	<h3>GENRE</h3>
				      
                      <asp:Repeater ID="Repeater1" runat="server">
                      <ItemTemplate>
             <li>
                
                 <asp:HyperLink ID="HyperLink1" runat="server" Text='<%# Eval("cat_name")%>' NavigateUrl='<%# Eval("cat_id","~/View/User/product.aspx?view={0}") %>' ></asp:HyperLink>
                 </li>
                      </ItemTemplate>
                          
                      </asp:Repeater>
                      
				  </ul>
				</div>					
	  	     </div>
					 <div class="header_bottom_right">					 
					 	 <div class="slider">					     
							 <div id="slider">
			                    <div id="mover">
			                    	<div id="slide-1" class="slide">			                    
									 <div class="slider-img">
									     <a href="preview.html"><img src="games/Pubg.jpg" alt="learn more" /></a>									    
									  </div>
						             	<div class="slider-text">
		                                 <h1><br><span>SALE</span></h1>
		                                 <h2>20% OFF on PUBG</h2>
									   <div class="features_list">
									   	<h4>GRAB ALL the OFFERS</h4>							               
							            </div>
							             <a href="preview.html" class="button">Shop Now</a>
					                   </div>			               
									  <div class="clear"></div>				
				                  </div>	
						             	<div class="slide">
						             		<div class="slider-text">
		                                 <h1><br><span>SALE</span></h1>
		                                 <h2>40% OFF on MUMMY GAME </h2>
									   <div class="features_list">
									   	<h4>GRAB ALL the OFFERS</h4>							               
							            </div>
							             <a href="preview.html" class="button">Shop Now</a>
					                   </div>		
						             	 <div class="slider-img">
									     <a href="preview.html"><img src="games/mummy Games.jpg" alt="learn more" /></a>
									  </div>						             					                 
									  <div class="clear"></div>				
				                  </div>
				                  <div class="slide">						             	
					                  <div class="slider-img">
									     <a href="preview.html"><img src="games/battle-royale.png" alt="learn more" /></a>
									  </div>
									  <div class="slider-text">
		                                 <h1><span>SALE</span></h1>
		                                 <h2>10% OFF on BATTLE ROYALE</h2>
									   <div class="features_list">
									   	<h4>GRAB ALL the OFFERS</h4>							               
							            </div>
							             <a href="preview.html" class="button">Shop Now</a>
					                   </div>	
									  <div class="clear"></div>				
				                  </div>												
			                 </div>		
		                </div>
					 <div class="clear"></div>					       
		         </div>
		      </div>
		   <div class="clear"></div>
		</div>
    </div>
   
 <div class="main">
    <div class="content">
    	<div class="content_top">
    		<div class="heading">
    		<h3>New GAMES</h3>
    		</div>
    		<div class="see">
    			<p><a href="">See all GAMES</a></p>
    		</div>
    		<div class="clear"></div>
    	</div>
	      <div class="section group">
				<div class="grid_1_of_4 images_1_of_4">
					 <a href=""><img src="games/maxresdefault.jpg" alt="" /></a>
					 <h2> </h2>
					<div class="price-details">
				       <div class="price-number">
							<p><span class="taka">$9.99</span></p>
					    </div>
					       		<div class="add-cart">								
									<h4><a href="preview.html">Add to Cart</a></h4>
							     </div>
							 <div class="clear"></div>
					</div>
					 
				</div>
				<div class="grid_1_of_4 images_1_of_4">
					<a href="preview.html"><img src="games/COD.jpg" alt="" /></a>
					 <h2> </h2>
					<div class="price-details">
				       <div class="price-number">
							<p><span class="taka">$10.75</span></p>
					    </div>
					       		<div class="add-cart">								
									<h4><a href="preview.html">Add to Cart</a></h4>
							     </div>
							 <div class="clear"></div>
					</div>
				    
				</div>
				<div class="grid_1_of_4 images_1_of_4">
					<a href="preview.html"><img src="games/Pubg.jpg" alt="" /></a>
					 <h2> </h2>
					 <div class="price-details">
				       <div class="price-number">
							<p><span class="taka">$5.00</span></p>
					    </div>
					       		<div class="add-cart">								
									<h4><a href="preview.html">Add to Cart</a></h4>
							     </div>
							 <div class="clear"></div>
					</div>
				</div>
				<div class="grid_1_of_4 images_1_of_4">
					<a href="preview.html"><img src="games/btrl.jpg" alt="" /></a>
					 <h2> </h2>
					<div class="price-details">
				       <div class="price-number">
							<p><span class="taka">$6.97</span></p>
					    </div>
					       		<div class="add-cart">								
									<h4><a href="preview.html">Add to Cart</a></h4>
							     </div>
							 <div class="clear"></div>
					</div>				     
				</div>
			</div>
			<div class="content_bottom">
    		<div class="heading">
    		<h3>Feature GAMES</h3>
    		</div>
    		<div class="see">
    			<p><a href="#">See all GAMES</a></p>
    		</div>
    		<div class="clear"></div>
    	</div>
			<div class="section group">
				<div class="grid_1_of_4 images_1_of_4">
					 <a href="preview.html"><img src="games/csgo.jpg" alt="" /></a>					
					 <h2>Lorem Ipsum is simply </h2>
					<div class="price-details">
				       <div class="price-number">
							<p><span class="taka">$10.99</span></p>
					    </div>
					       		<div class="add-cart">								
									<h4><a href="preview.html">Add to Cart</a></h4>
							     </div>
							 <div class="clear"></div>
					</div>
				</div>
				<div class="grid_1_of_4 images_1_of_4">
					<a href="preview.html"><img src="games/GTA.png" alt="" /></a>
					 <h2> </h2>
					 <div class="price-details">
				       <div class="price-number">
							<p><span class="taka">$8</span></p>
					    </div>
					       		<div class="add-cart">								
									<h4><a href="preview.html">Add to Cart</a></h4>
							     </div>
							 <div class="clear"></div>
					</div>
				</div>
				<div class="grid_1_of_4 images_1_of_4">
					<a href="preview.html"><img src="games/ss3.jpg" alt="" /></a>
					 <h2> </h2>
					<div class="price-details">
				       <div class="price-number">
							<p><span class="taka">$9.99</span></p>
					    </div>
					       		<div class="add-cart">								
									<h4><a href="preview.html">Add to Cart</a></h4>
							     </div>
							 <div class="clear"></div>
					</div>
				</div>
				<div class="grid_1_of_4 images_1_of_4">
				 <a href="preview.html"><img src="games/ss4.jpg" alt="" /></a>
					 <h2></h2>					 
					 <div class="price-details">
				       <div class="price-number">
							<p><span class="taka">$8.99</span></p>
					    </div>
					       		<div class="add-cart">								
									<h4><a href="preview.html">Add to Cart</a></h4>
							     </div>
							 <div class="clear"></div>
					</div>
				</div>
			</div>
    </div>
 </div>
    </div>


</asp:Content>
