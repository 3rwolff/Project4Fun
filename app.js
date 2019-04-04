window.onscroll = function() {hideScrollBtn()};


function showGrill() 
{
if ( document.getElementById( "grillContent").innerHTML=="")
	{
	var grill = Array();
	grill[0] = "Top Sirloin Steak! - $4.99";
	grill[1] = "1/2 Pounder! - $3.99";
	grill[2] = "Bacon Wrapped Burger! - $3.50";

	var onTheGrill = "<hr width=50%>";
	for (i = 0; i < grill.length; i++)
		{
		if (i != 0)
			onTheGrill += "<br><br>";
		onTheGrill += "&#10146 &nbsp " + grill[i] +  "&nbsp &#10147";
		}
	document.getElementById("grillContent").innerHTML=onTheGrill;
	}
else
	document.getElementById("grillContent").innerHTML="";
}//showGrill()


function showFact()
{
//shows fun burger facts
  if ( !document.getElementById( "funFact") )
    {
    var rand_num = Math.floor( Math.random() * 4 );
    
  //only create new random number if it is the same as the last time  
  if ( typeof temp == 'number' )
    {
    while ( rand_num == temp )
      {
    var rand_num = Math.floor(Math.random()*4);
        }
    }

      temp = rand_num;//save previous fact, no duplicates
    var facts = Array();
    facts[0] = "7 calories in a gram of burger fat!";
    facts[1] = "Bacon bits make any burger better!";
    facts[2] = "Burger Meister Burger Meister!";
    facts[3] = "Some burgers aren't made of beef!";
      
    //create new node
    var node = document.createElement( 'div' );
    node.setAttribute('id', 'funFact' );
    //fill node with text
    var textnode = document.createTextNode( facts[rand_num] );
    //append text to new node
    node.appendChild( textnode );
    //append node to DOM
    document.getElementById( 'factContainer' ).appendChild(node);
    }
else{
    var fact_element = document.getElementById( "funFact" );
    fact_element.parentNode.removeChild( fact_element );
    }
}//end showPara()


function scrollMeToTop()
{
//scrolls to top of page
 	
 	document.documentElement.scrollTop = 0;//window.scrollTo(0,0);//also works
 	document.body.scrollTop = 0;
}//end scrollMeToTop()


function hideScrollBtn()
{
//hide scroll button when at top of document
if (document.documentElement.scrollTop > 20 || document.body.scrollTop > 20)
	document.getElementById("scrollBtn").style.display="block";
else
	document.getElementById("scrollBtn").style.display="none";
}//end hideScrollBtn()