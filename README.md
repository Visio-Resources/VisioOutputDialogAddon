# Output dialog Visio add-on that can display text when a shape is double-clicked, dropped on a page, or duplicated

There is no built-in ability for Visio to display a text dialog box when a shape is double-clicked or dropped on a page. Just install this addon, then run the file "test.vsd".
As can be seen not only can text be displayed but you can also show any value(s) from the shape's shapesheet.
Nor is this dialog limited to the double-click event, it can also work on shape drop. Open the shape's shapesheet editor and put the formula in the cell EventDrop instead of EventDblClick.
You can also perform multiple events, say you want to give some instructions before opening one of the standard Visio dialogs. If also want to open the Fill dialog then you could use:
=RUNADDONWARGS("outputdialog", "Your instructions") + DoCmd(1066)
or
=DoCmd(1066) + RUNADDONWARGS("outputdialog", "Your comments")
if you want to display your text afterwards.

To insert a new line in the text use the text '\r' within your text string.

![image](https://github.com/user-attachments/assets/eab9f2d8-1b68-424c-a18a-7324949b65be)

See: https://www.paulherber.co.uk/free-visio-addons/

