//document.addEventListener("DOMContentLoaded", () => {
//    const searchInput = document.getElementById("pm_searchInput")
//    const fromDate = document.getElementById("pm_fromDate")
//    const toDate = document.getElementById("pm_toDate")
//    const searchBtn = document.getElementById("pm_searchBtn")    
//    const tableRows = document.querySelectorAll("#pm_patientTable tbody tr")

//    function filterPatients() {
//        const searchTerm = searchInput.value.toLowerCase()
//        const fromDateValue = fromDate.value
//        const toDateValue = toDate.value

//        tableRows.forEach((row) => {
//            const date = row.children[1].textContent
//            const idNo = row.children[2].textContent.toLowerCase()
//            const name = row.children[3].textContent.toLowerCase()

//            const matchesSearch = name.includes(searchTerm) || idNo.includes(searchTerm)
//            const matchesDateRange = (!fromDateValue || date >= fromDateValue) && (!toDateValue || date <= toDateValue)

//            if (matchesSearch && matchesDateRange) {
//                row.style.display = ""
//            } else {
//                row.style.display = "none"
//            }
//        })
//    }

//    searchBtn.addEventListener("click", filterPatients)
//    searchInput.addEventListener("input", filterPatients)

//    document.querySelector("#pm_patientTable tbody").addEventListener("click", (e) => {
//        if (e.target.classList.contains("pm_edit-btn")) {
//            const patientId = e.target.getAttribute("data-id")
//            alert(`Edit patient with ID: ${patientId}`)
//        } else if (e.target.classList.contains("pm_delete-btn")) {
//            const patientId = e.target.getAttribute("data-id")
//            alert(`Delete patient with ID: ${patientId}`)
//        }
//    })
//})

