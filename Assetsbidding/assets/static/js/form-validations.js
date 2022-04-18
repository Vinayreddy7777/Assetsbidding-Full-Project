function add_asset_validation(){
    var category= document.myform.category
    var sub_category= document.myform.subcategory
    var asset_name= document.myform.username
    var bank= document.myform.bank
    var description= document.myform.description
    var bid_starting_price= document.myform.price
    var asset_image= document.myform.image
    var number = /[0-9]/;


    
    if (category.value=='Select Category'){
        alert("Select Asset Category")
        category.focus();
        return false;
    }    
    if (sub_category.value=='Select Sub-Category'){
        alert("Select Asset Sub-Category")
        sub_category.focus();
        return false;
    }
    if (asset_name.value=='' || asset_name.value.length <6){
        alert("Asset name cannot be blank and should be more than 6 alphabets")
        asset_name.focus();
        return false;
    } 
    if (bank.value=='Select Bank'){
        alert("Select Bank")
        bank.focus();
        return false;
    } 
    if (description.value==''){
        alert("Write some information about your Asset")
        description.focus();
        return false;
    } 
    if (bid_starting_price.value=='' || !bid_starting_price.value.match(number)){
        alert("please enter bid price and it should be a number")
        bid_starting_price.focus();
        return false;
    } 
    if (asset_image.value==''){
        alert("Add your Asset Image")
        asset_image.focus();
        return false;
    }  
       
    
    return true;
}




function bid_validation(){
   
    var user_bid_price= document.myform.bidprice
    var number = /[0-9]/;
        
    if (user_bid_price.value=='' || !user_bid_price.value.match(number)){
        alert("please enter your bid price and it should be a number")
        user_bid_price.focus();
        return false;
    } 
    
    return true;
    }




