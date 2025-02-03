<%@ Page Title="" Language="C#" MasterPageFile="~/Lab.Master" AutoEventWireup="true" CodeBehind="StaffCreate.aspx.cs" Inherits="Lab_Project.StaffCreate" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style>
     * {
         margin: 0;
         padding: 0;
         box-sizing: border-box;
         font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, sans-serif;
     }

     body {
         background-color: #f5f5f5;
     }

     .headerd {
         background-color: #5f9278;
         color: white;
         padding: 20px;
         display: flex;
         align-items: center;
         gap: 20px;
     }

     .back-button {
         background: none;
         border: none;
         color: white;
         font-size: 24px;
         cursor: pointer;
         padding: 8px;
     }

     .headerd h1 {
         font-size: 24px;
         font-weight: normal;
     }

     .container {
         padding: 20px;
         max-width: 800px;
         margin: 0 auto;
     }

     .form-group {
         margin-bottom: 24px;
         position: relative;
     }

         .form-group label {
             display: block;
             color: #333;
             font-size: 16px;
             margin-bottom: 8px;
         }

     .input-field {
         width: 100%;
         padding: 12px 16px;
         border: 1px solid #000;
         border-radius: 8px;
         font-size: 16px;
         outline: none;
         transition: border-color 0.3s;
     }

         .input-field:focus {
             border-color: #5f9278;
         }

     .row {
         display: flex;
         gap: 20px;
     }

     .col {
         flex: 1;
     }

     .unit-field {
         background-color: white;
         color: #666;
     }

     textarea.input-field {
         min-height: 120px;
         resize: vertical;
     }

     .section-title {
         font-size: 24px;
         margin: 40px 0 20px;
     }

     .section-subtitle {
         color: #666;
         margin-bottom: 20px;
     }

     .checkbox-group {
         display: flex;
         align-items: center;
         gap: 12px;
         margin-top: 40px;
     }

         .checkbox-group input[type="checkbox"] {
             width: 20px;
             height: 20px;
             border: 1px solid #000;
             border-radius: 4px;
         }

         .checkbox-group label {
             font-size: 16px;
             color: #333;
         }



     .tests-section {
         max-width: 100%;
         overflow-x: hidden;
     }

     .section-subtitle {
         color: #333;
         margin: 30px 0 20px;
         font-size: 20px;
         font-weight: 500;
     }

     .table-responsive {
         overflow-x: auto;
         margin-bottom: 20px;
         border-radius: 8px;
         border: 1px solid #ddd;
         max-width: 100%;
         width: 100%;
     }

     .blood-tests-table {
         width: 100%;
         min-width: 600px;
         border-collapse: collapse;
         background-color: #f5f5f5;
     }

         .blood-tests-table th,
         .blood-tests-table td {
             padding: 12px;
             text-align: left;
             border-bottom: 1px solid #ddd;
         }

         .blood-tests-table th {
             background-color: #5f9278;
             color: white;
             font-weight: normal;
         }

         .blood-tests-table tbody tr:hover {
             background-color: #eee;
         }

     .delete-btn {
         background-color: #dc3545;
         color: white;
         border: none;
         padding: 6px 12px;
         border-radius: 4px;
         cursor: pointer;
         font-size: 14px;
         transition: background-color 0.3s;
     }

         .delete-btn:hover {
             background-color: #c82333;
         }

     .add-test-section {
         margin-top: 20px;
     }

     .test-inputs {
         display: flex;
         gap: 15px;
         align-items: center;
     }

     .select-test {
         flex: 1;
     }

     .add-btn {
         background-color: #5f9278;
         color: white;
         border: none;
         padding: 12px 24px;
         border-radius: 8px;
         cursor: pointer;
         font-size: 16px;
         transition: background-color 0.3s;
         white-space: nowrap;
     }

         .add-btn:hover {
             background-color: #4a7259;
         }

     @media (max-width: 768px) {
         .test-inputs {
             flex-direction: column;
         }

         .add-btn {
             width: 100%;
         }
     }
 </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="body">
    <div class="pagetitle">
        <h1>Master</h1>
        <nav>
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="index.html">Staff Management</a></li>
                <li class="breadcrumb-item active">Create</li>
            </ol>
        </nav>
    </div>


    <div class="container">
        <form>
            <div class="form-group">
                <label>Employee Name</label>
                <input type="text" class="input-field">
            </div>

            <div class="row">
                <div class="col form-group">
                    <label>Phone Number</label>
                    <input type="text" class="input-field unit-field">
                </div>
                <div class="col form-group">
                    <label>Pass</label>
                    <input type="text" class="input-field ">
                </div>
            </div>
             
            <div class="form-group">
                <label>Salary</label>
                <input type="text" class="input-field">
            </div>
                    

            <div class="tests-section">
                <div class="add-test-section">
                    <div class="test-inputs" style="justify-content:end">
                        <a href="StaffIndex.aspx" class="add-btn">Save</a>
                        <%--<button class="add-btn">Save</button>   --%>                         
                        <button class="add-btn" style="background:red!important">Cancle</button>
                    </div>
                </div>
            </div>
        </form>
    </div>
</div>
</asp:Content>
