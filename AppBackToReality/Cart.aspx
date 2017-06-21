<%@ Page Title="Cart" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="AppBackToReality.Cart" %>



<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <script src="https://www.paypalobjects.com/api/checkout.js"></script>

    <div id="CartTitle" runat="server" class="ContentHead">
        <h1>Shopping Cart</h1>
    </div>
    <asp:GridView ID="CartList" runat="server" AutoGenerateColumns="False"
        ShowFooter="True" GridLines="Vertical" CellPadding="4"
        ItemType="AppBackToReality.Models.CartItem"
        SelectMethod="GetShoppingCartItems"
        CssClass="table table-striped table-bordered">
        <Columns>
            <asp:BoundField DataField="ScreenID" HeaderText="ID"
                SortExpression="ScreenID" />
            <asp:BoundField DataField="Screen.ScreenName" HeaderText="Name" />
            <asp:BoundField DataField="Screen.UnitPrice" HeaderText="Price (each)" DataFormatString="{0:c}" />


        </Columns>
    </asp:GridView>
    <div>
        <asp:Button runat="server" ID="RemoveButton" Text="Clear" OnClick="RemoveButton_Click" />
    </div>
    <div>
        <p></p>
        <strong>
            <asp:Label ID="LabelTotalText" runat="server" Text="Order Total:"></asp:Label>
            <asp:Label ID="lblTotal" runat="server"
                EnableViewState="false"></asp:Label>
        </strong>
        <div runat="server" id="PaypalStuff">
            <div id="paypal-button"></div>

            <script src="https://www.paypalobjects.com/api/checkout.js"></script>

            <script>
                paypal.Button.render({

                    env: 'sandbox', // Or 'sandbox'

                    client: {
                        sandbox: 'ARxVu-jLMsDvWqCcD3sTIB-6fSxy3TvlmHxTFHNx9Rv5iurufbLm9b48KIbp1bwDDpniH-9dJgpXxiGR',
                        production: 'xxxxxxxxx'
                    },

                    commit: true, // Show a 'Pay Now' button

                    payment: function (data, actions) {
                        return actions.payment.create({
                            transactions: [
                                {
                                    amount: { total: '386.01', currency: 'USD' }
                                }
                            ]
                        });
                    },

                    onAuthorize: function (data, actions) {
                        return actions.payment.execute().then(function (payment) {

                            // The payment is complete!
                            // You can now show a confirmation message to the customer
                        });
                    }

                }, '#paypal-button');
            </script>
        </div>
    </div>
    <br />
    <asp:Button ID="Button1" runat="server" Text="Request Quote" OnClick="Button1_Click" />
    <div>
        <h4 runat="server" id="EmptyLabel"></h4>
    </div>
    <div>
        <h5 runat="server" id="EmailStatus"></h5>
    </div>
</asp:Content>
