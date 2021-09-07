
let myChart1 = document.getElementById("myChart").getContext('2d');

let myChart1 = new Chart(myChart1,{
    type: "doughnut"
    data: {
        labels: labels1,
        datasets:[{
            data:data1,
            backgroundColor: colors1
        }]
    },
    options: {
        title: {
            text: "Do you like donuts?"
            display:true
            }
        }
    }
});