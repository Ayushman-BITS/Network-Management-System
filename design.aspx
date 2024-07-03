<%@ Page Language="C#" AutoEventWireup="true" CodeFile="design.aspx.cs" Inherits="design" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
     <style>
         .fixed-menu{
             position:fixed;
             width: 100%;
             height: 75px;
             background-color: #f00;
             padding: 10px
         }
         .spacer
            {
                width: 100%;
                height: 95px;
            }
         .green {
                background-color: green !important;
                color: white !important;
            }


     </style>

      <script>
         
          function changeColor(args) {


              var arElements = document.getElementById("dvRes").querySelectorAll("input");
             
              for (var i = 0; i < arElements.length; i++)
              {
                  arElements[i].style.backgroundColor = "#0275d8";
              }

              
            
              var ar = new Array();
              ar = args.split(',');
              
              for(var i=0;i<=ar.length-1;i++)
              {
                  document.getElementById('btn'+ar[i]).style.backgroundColor="red";
              }

    }
</script>





</head>
<body>
    <form id="form1" runat="server">
        <div class="fixed-menu">
    <nav class="navbar navbar-expand-lg navbar-light bg-body-tertiary">
      <div class="container-fluid">
        <a class="navbar-brand" href="#">CSIR-IMMT NMC</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav me-auto mb-2 mb-lg-0">
            <li class="nav-item">
              <a class="nav-link active" aria-current="page" href="#">Home</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="default.aspx" role="button" aria-expanded="false">
                Add Button
              </a>
            </li>
            
          </ul>
        
        </div>
      </div>
    </nav>
   </div>
    <div class="spacer">
        &nbsp;
    </div>

    
    <div style="width:100%;margin:auto;" id="dvRes" runat="server">
    
    </div>
    </form>
  
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js" integrity="sha384-fbbOQedDUMZZ5KreZpsbe1LCZPVmfTnH7ois6mU1QK+m14rQ1l2bGBq41eYeM/fS" crossorigin="anonymous"></script>
</body>
</html>
