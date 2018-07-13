<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title> test Boot Strap </title>

    <!-- Bootstrap Core CSS - Uses Bootswatch Flatly Theme: http://bootswatch.com/flatly/ -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/freelancer.css" rel="stylesheet">
     <!-- -->
    <link href="css/carousel.css" rel="stylesheet">
     
    <!-- Custom Fonts -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
   
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]> -->
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>
    <script>
    $(function(){
        
     //? ????? ????? ?????????? ???????? ?? Jquery
     
     setTimeout(check,1000);
     
     // ????????? ????? 1 ??????? ??????? check() - ???? ???.
     
        
     function test(){
      
        alert("test");
         
     }  
        
      // test();
     
     function check(){
// ??????? ?????? ??? ???????????? ??????
var itemNames = [];
// ???????? ? ?????????? V ??? ??? ???? ? ????? id = base ( <span id="base" ... )
// ? ???? ??????? ???????? ?????? ?? ????
var v= $("#base").html();
// ????????? ?????? V c ??????? ??????? * ? ???????? ??? ?????? ? ?????? tmp1 (??????? ????????? ?? ????
var tmp1=v.split("*");

// ?????????? ???? id=storeItems

$('#storeItems').html("");

// ????????? ???? ? ???????? ?? ??????? tmp1

for (var i = 0; i < tmp1.length; i++) {



// ?????? ?????? ????? ???????? ?????? ?? ????????? ????

var tmp2=tmp1[i].split(":");

if (tmp2[0]!=""){

// tmp2[0] - ??? ????????
// tmp2[1] - ????????????
// tmp2[2] - ????????

// ????????? ? ???? <div id=storeItems > ?????????? ? ?????? ?? ???? ??????

$('#storeItems').append('<div class="custom" style="border: solid 1px; margin:50px; padding:10px;">');
$('#storeItems').append('<div class="row">');
$('#storeItems').append('<div class="col-lg-2 col-md-2 col-sm-2 text-center">');



$('#storeItems').append('<img src="images/'+tmp2[0]+'" width=200 height=150>');

$("#storeItems").append(' <b>'+tmp2[3]+' Rub </b>');

$('#storeItems').append('</div>');

$('#storeItems').append('<div class="col-lg-8 col-md-8 col-sm-8 text-left" style="padding:10px;"> ');

$("#storeItems").append(tmp2[1]);

$("#storeItems").append(tmp2[2]);

// ????????? ?????? ?? ????????????
itemNames[i]=tmp2[1];



// ????????? ?????????????? ?????

$('#storeItems').append('</div>');

$('#storeItems').append('</div>');

$('#storeItems').append('</div>');

$('#storeItems').append('<div class="row">');
$('#storeItems').append('<div class="col-lg-6 col-md-6 col-sm-6 text-center">');

$('#storeItems').append('<div id="b_'+i+'" class="myBtn"> Add '+ tmp2[1] +' to Cart </div>');

$('#storeItems').append('</div>');
$('#storeItems').append('</div>');


$('#storeItems').append('</div>');

$('#storeItems').append('</div>');

}



}

$("#storeItems").append("</div>");


// ????????? ??????? ???????

$(".myBtn").click(function(){



var tmp=$(".myBtn").attr('id');

var tmp=tmp.split("_");



alert("Item "+itemNames[tmp[1]]+" added to cart");


});


}


})
</script>
        <![endif]-->
        
        <style>
            
            .myBtn{
              
                padding: 10px;
                margin: 50px;
                background: #000033;
                cursor: pointer;
                color:#fff;
                
            }  
            
            .myBtn:hover{
                
               color:#ffff99; 
            }
            
            
        </style>

</head>

<body id="page-top" class="index" style="">
    
      <!-- Navigation -->
    <nav class="navbar navbar-default navbar-fixed-top">
        <div class="container">
         
            <div class="navbar-header page-scroll">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
               
                
                <a class="navbar-brand" href="#page-top" style="color:#ffffff;"> Title <br>+7911 111 11 11 </a> 
              
            </div>

         
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li class="hidden">
                        <a href="#page-top"></a>
                    </li>
                    <li class="page-scroll">
                        <a href="#">menu item</a>
                    </li>
                   
                    <li class="page-scroll">
                        <a href="https://www.youtube.com/">video</a>
                    </li>
                  
                    <li class="page-scroll">
                        <a href="#contact">contacts</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>
    <!--  -->


    <div class="container" style="margin-top: 150px; margin-bottom: 20px;">
    <div class="row">
    <div class="col-lg-12 text-center">
    
    
        <!--h1>Entry Form</h1-->
   
        <form name="Name Input Form" action="response.jsp">
            Search Item:<input type="text" name="name" value="" size="30" />
            <input type="submit" value="OK" name="OK" /></form>
    
    <jsp:useBean id="mybean" scope="session" class="org.mypackage.hello2.NameHandler" />
    <jsp:setProperty name="mybean" property="name" />
    <span id="base" style="display: none;"><jsp:getProperty name="mybean" property="name" /></span>
       </div>   </div>    </div>
       
       
       
       
   <!-- 
  <div class="custom" style="margin-top: 10px; margin-bottom: 200px;">
  <div class="row">
  <div class="col-lg-12 text-center">   
   -->  
      
  <div id="storeItems" class="col-lg-12 text-center" style="margin-bottom:100px;"> 
  
      <img src="images/spin.gif">
  
  </div>
  
    <!--        
  </div> </div></div>
         -->   
       
       
       
        <!-- Footer -->
    <footer class="text-center"  style="z-index:5;">
        <div class="footer-above" style="z-index:5;">
            <div class="container" style="z-index:5;">
                <div class="row">
                    <div class="footer-col col-md-4" style="z-index:5;">
                        <h3> </h3>
                        <p> Name <br> Adress, <br> ZIP </p>
                    </div>
                    <div class="footer-col col-md-4" style="z-index:5;">
                        <h3> </h3>
                        <ul class="list-inline">
                            <li>
         <a href="https://www.facebook.com/" class="btn-social btn-outline"><i class="fa fa-fw fa-facebook"></i></a>
                            </li>
                           <!--
                            <li>
                                <a href="#" class="btn-social btn-outline"><i class="fa fa-fw fa-google-plus"></i></a>
                            </li>
                           -->
                            <li>
        <a href="https://twitter.com/" class="btn-social btn-outline"><i class="fa fa-fw fa-twitter"></i></a>
                            </li>
                            <li>
     <a href="https://www.youtube.com/" class="btn-social btn-outline"><i class="fa fa-fw fa-youtube"></i></a>
                            </li>
                            <!--
                            <li>
                                <a href="#" class="btn-social btn-outline"><i class="fa fa-fw fa-dribbble"></i></a>
                            </li>
                             -->
                        </ul>
                    </div>
                    <div class="footer-col col-md-4" style="z-index:5;">
                        <h3></h3>
                        <p>+7921 111 11 11 <br> +7911 111 11 11 <br>  <a href="https://new.vk.com/"> new.vk.com/ </a></p>
                    </div>
                </div>
            </div>
        </div>
        <div class="footer-below" style="z-index:5;">
            <div class="container" style="z-index:5;">
                <div class="row" style="z-index:5;">
                    <div class="col-lg-12" style="z-index:5;">
                       Free from Copyright &copy;
                    </div>
                </div>
            </div>
        </div>
    </footer>

    <!-- Scroll to Top Button (Only visible on small and extra-small screen sizes) -->
    <div class="scroll-top page-scroll visible-xs visible-sm">
        <a class="btn btn-primary" href="#page-top">
            <i class="fa fa-chevron-up"></i>
        </a>
    </div>




</body>
</html>
