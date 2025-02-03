<%@ Page Title="" Language="C#" MasterPageFile="~/Lab.Master" AutoEventWireup="true" CodeBehind="StaffIndex.aspx.cs" Inherits="Lab_Project.StaffIndex" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }

        body {
            font-family: Arial, sans-serif;
            line-height: 1.6;
            background-color: #f4f4f4;
        }

        .pm_container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 20px;
            display: flex;
            flex-direction: column;
            height: calc(100vh - 40px); /* Full viewport height minus padding */
        }

        .pm_header {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 20px;
            gap: 10px;
        }

        .pm_search-container,
        .pm_date-container,
        .pm_new-button-container {
            margin-bottom: 10px;
        }

        #pm_searchInput,
        #pm_fromDate,
        #pm_toDate {
            padding: 8px;
            border: 1px solid #ddd;
            border-radius: 4px;
        }

        #pm_searchBtn,
        #pm_newBtn {
            padding: 8px 16px;
            background-color: #4caf50;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

            #pm_searchBtn:hover,
            #pm_newBtn:hover {
                background-color: #45a049;
            }

        .pm_table-container {
            flex: 1;
            overflow: auto;
            border: 1px solid #ddd;
            border-radius: 4px;
        }

        #pm_patientTable {
            width: 100%;
            border-collapse: separate;
            border-spacing: 0;
            background-color: white;
            min-width: 800px; /* Ensure table doesn't shrink too much */
        }

            #pm_patientTable th,
            #pm_patientTable td {
                padding: 12px;
                text-align: left;
                border-bottom: 1px solid #ddd;
                white-space: nowrap; /* Prevent text wrapping */
            }

            #pm_patientTable th {
                background-color: #f2f2f2;
                font-weight: bold;
                position: sticky;
                top: 0;
                z-index: 1;
                box-shadow: 0 2px 2px -1px rgba(0, 0, 0, 0.1);
            }

                #pm_patientTable th:after {
                    content: "";
                    position: absolute;
                    left: 0;
                    bottom: 0;
                    width: 100%;
                    border-bottom: 1px solid #ddd;
                }

            #pm_patientTable tr:last-child td {
                border-bottom: none;
            }

            #pm_patientTable tr:hover {
                background-color: #f5f5f5;
            }

        .pm_action-buttons button {
            margin-right: 5px;
            padding: 5px 10px;
            font-size: 0.9em;
        }

        .pm_edit-btn {
            background-color: #2196f3;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        .pm_delete-btn {
            background-color: #f44336;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        /* Custom scrollbar styles for better appearance */
        .pm_table-container::-webkit-scrollbar {
            width: 10px;
            height: 10px;
        }

        .pm_table-container::-webkit-scrollbar-track {
            background: #f1f1f1;
        }

        .pm_table-container::-webkit-scrollbar-thumb {
            background: #888;
            border-radius: 5px;
        }

            .pm_table-container::-webkit-scrollbar-thumb:hover {
                background: #555;
            }

        @media screen and (max-width: 768px) {
            .pm_header {
                flex-direction: column;
                align-items: stretch;
            }

            .pm_search-container,
            .pm_date-container,
            .pm_new-button-container {
                width: 100%;
            }

            #pm_searchInput,
            #pm_fromDate,
            #pm_toDate {
                width: 100%;
                margin-bottom: 10px;
            }

            .pm_date-container {
                display: flex;
                gap: 10px;
            }

                .pm_date-container input[type="date"] {
                    flex: 1;
                }

            #pm_searchBtn,
            #pm_newBtn {
                width: 100%;
            }
        }

        @media screen and (max-width: 480px) {
            .pm_date-container {
                flex-direction: column;
            }
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="pagetitle">
        <h1>Master</h1>
        <nav>
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="index.html">Staff Management</a></li>
                <li class="breadcrumb-item active">Create</li>
            </ol>
        </nav>
    </div>

    <div class="pm_container">
        <div class="pm_header">
            <div class="pm_new-button-container">
                <a href="StaffCreate.aspx" id="pm_newBtn">New</a>
            </div>


            <div class="pm_search-container">
                <input type="text" id="pm_searchInput" placeholder="Search patients...">
            </div>
        </div>
        <div class="pm_table-container">
            <table id="pm_patientTable">
                <thead>
                    <tr>
                        <th>Action</th>
                        <th>ID No</th>
                        <th>Name</th>
                        <th>Contact</th>
                        <th>Pass</th>
                        <th>Salary</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>
                            <div class="pm_action-buttons">
                                <button class="pm_edit-btn" data-id="1">Edit</button>
                                <button class="pm_delete-btn" data-id="1">Delete</button>
                            </div>
                        </td>
                        <td>PT001</td>
                        <td>Tirtharaj Sardeshmukh</td>
                        <td>1234567890</td>
                        <td>1234</td>
                        <td>500</td>
                    </tr>
                    <tr>
                        <td>
                            <div class="pm_action-buttons">
                                <button class="pm_edit-btn" data-id="2">Edit</button>
                                <button class="pm_delete-btn" data-id="2">Delete</button>
                            </div>
                        </td>
                        <td>PT002</td>
                        <td>SHreyaunsh Kirloskar</td>
                        <td>2345678901</td>
                        <td>909</td>
                        <td>600</td>
                    </tr>
                    <tr>
                        <td>
                            <div class="pm_action-buttons">
                                <button class="pm_edit-btn" data-id="3">Edit</button>
                                <button class="pm_delete-btn" data-id="3">Delete</button>
                            </div>
                        </td>
                        <td>PT003</td>
                        <td>Pushkraj Rajpurohit</td>
                        <td>345-678-9012</td>
                        <td>676</td>
                        <td>250</td>
                    </tr>

                </tbody>
            </table>
        </div>
    </div>
    <script src="script.js"></script>
</asp:Content>
