﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Lab.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Lab_Project.Index" %>

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
            <h1>Case Paper</h1>
            <nav>
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                    <li class="breadcrumb-item active">Case Paper</li>
                </ol>
            </nav>
        </div>


        <div class="container">
            <form>
                <div class="form-group">
                    <label>Petient Name</label>
                    <input type="text" class="input-field">
                </div>

                <div class="form-group">
                    <label>Date Of Birth</label>
                    <input type="text" class="input-field">
                </div>

                <div class="row">
                    <div class="col form-group">
                        <label>Gender</label>
                        <input type="text" class="input-field">
                    </div>
                    <div class="col form-group">
                        <label>Phone Number</label>
                        <input type="text" class="input-field unit-field">
                    </div>
                </div>

                <div class="form-group">
                    <label>Address (Optional)</label>
                    <textarea type="text" rows="3" class="input-field"></textarea>
                </div>

                <div class="form-group">
                    <label>Doctor Reference</label>
                    <input type="text" class="input-field">
                </div>

                <div class="tests-section">
                    <h3 class="section-subtitle" style="color: #333; margin: 30px 0 20px;">Blood Tests</h3>

                    <!-- Table -->
                    <div class="table-responsive">
                        <table class="blood-tests-table">
                            <thead>
                                <tr>
                                    <th>Sr No</th>
                                    <th>Test Name</th>
                                    <th>Price (₹)</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>1</td>
                                    <td>Complete Blood Count (CBC)</td>
                                    <td>500</td>
                                    <td>
                                        <button class="delete-btn">
                                            <i class="fas fa-trash"></i>
                                            Delete
                                       
                                        </button>
                                    </td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>Blood Sugar Test</td>
                                    <td>300</td>
                                    <td>
                                        <button class="delete-btn">
                                            <i class="fas fa-trash"></i>
                                            Delete
                                       
                                        </button>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>

                    <!-- Add Test Section -->
                    <div class="add-test-section">
                        <div class="test-inputs">
                            <select class="input-field select-test">
                                <option value="">Select Test</option>
                                <option value="cbc">Complete Blood Count (CBC)</option>
                                <option value="sugar">Blood Sugar Test</option>
                                <option value="thyroid">Thyroid Profile</option>
                                <option value="lipid">Lipid Profile</option>
                            </select>
                            <button class="add-btn">Add Test</button>
                        </div>
                    </div>
                </div>

                <h2 class="section-title">Discount (%)</h2>
                <p class="section-subtitle">If you gave the discount please fill in the below field</p>

                <div class="form-group">
                    <label>Dis (%)</label>
                    <input type="text" class="input-field">
                </div>

                <h2 class="section-title">Collection</h2>
                <div class="checkbox-group">
                    <input type="checkbox" id="counter-sales">
                    <label for="counter-sales">Home Collection</label>
                </div>



                <div class="tests-section">
                    <div class="add-test-section">
                        <div class="test-inputs" style="justify-content:end">
                            <button class="add-btn">Save</button>                            
                            <button class="add-btn" style="background:red!important">Cancle</button>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>

</asp:Content>
