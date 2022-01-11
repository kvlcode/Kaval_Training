//10-01-2022
//Task 
// data taken from JSON file(test_data.json). Included in html file(outputOfTask1.html).

function showPath(data, m){       //Function 
    if (m == '1') {         
        return '1'              

    }
    else 
    {

        data.forEach(element => {                   //Element use to point object in JSON 

            if (element.entity_id == m) {              //Compare user input with given values in JSON file

                finalPath = showPath(data, element.parent_id) + '/' + m ;       //Recursive call & make path         
            }

        });

        return finalPath                   // retutrn path
    }
}

var n = prompt("Enter entity_id:"); // Take input from user
  
document.write(showPath(data, n))     //Function call