<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>通过五角星显示好评等级</title>
     <style type="text/css">
    /* 五角星的样式 */
    .cssRatingStar
    {
	    white-space: nowrap;
	    margin: 5pt;
	    height: 14px;
	    float: left;
    }
    .cssRatingStarratingItem
    {
        font-size: 0pt;
        width: 13px;
        height: 12px;
        margin: 0px;
        padding: 2px;
        cursor: pointer;
        display: block;
        background-repeat: no-repeat;
    }
    .cssRatingStarSaved
    {
        background-image: url(Images/RatingStarSaved.png);
    }
    .cssRatingStarFilled
    {
        background-image: url(Images/RatingStarFilled.png);
    }
    .cssRatingStarEmpty
    {
        background-image: url(Images/RatingStarEmpty.png);
    }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                                    <cc1:Rating ID="Rating1" runat="server" AutoPostBack="True" CssClass="cssRatingStar" CurrentRating="1" EmptyStarCssClass="cssRatingStarEmpty" FilledStarCssClass="cssRatingStarSaved" WaitingStarCssClass="cssRatingStarFilled" StarCssClass="cssRatingStarratingItem" OnChanged="Rating1_Changed">
                                    </cc1:Rating>
                                    好评等级为:<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                                    颗星
    </div>
    </form>
</body>
</html>
