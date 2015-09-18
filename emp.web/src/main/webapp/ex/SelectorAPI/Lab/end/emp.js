(function(){
	var nameList=document.querySelectorAll("table tr > td:nth-child(2)");
	var salList=document.querySelectorAll("table tr > td:nth-child(6)");
	var commList=document.querySelectorAll("table tr > td:nth-child(7)");
	var name,sal,comm;
	var annualSal;
	var totalSal=0;
	
	for(var i=0;i<nameList.length;i++){
		name=nameList[i].textContent;
		sal=parseFloat(salList[i].textContent);
		comm=parseFloat(commList[i].textContent);
		annualSal=sal*12+comm;console.log("Name: %s, Annual Salary: %f",name,annualSal);
		totalSal+=annualSal}document.querySelector("#total_sal").textContent=totalSal
	}
)();
