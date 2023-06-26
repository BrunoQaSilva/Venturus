Feature: Fill out the form
In order to verify the fields
As a user
I want to fill in and access the functionalities of this form
Once I access the application

Scenario: Fill in the Input field, adjust the Slider to 10, and insert a comment in the TextArea field with the form in the 'In Line' position
Given that I am on the form page
And I select the 'In Line' option in the Radio Button
When I insert 'Test123' into the Input field
And I adjust the Slider to the value 10
And I insert 'This is a test' into the TextArea field
Then the Input field should contain 'Test123'
And the value 10 should be shown below the Slider
And 'This is a test' should be displayed in the TextArea field

Scenario: Select a country in the Select field, select 'Color' in the TreeSelect field and 'Campinas' in the Cascader field with the form in the 'Horizontal' position
Given that I am on the form page
And I select the 'Horizontal' option in the Radio Button
When I select 'Brazil' in the Select field
And I select 'Color' in the TreeSelect field
And I select 'Campinas' in the Cascader field
Then 'Brazil' should be selected in the Select field
And 'Color' should be selected in the TreeSelect field
And 'Campinas' should be selected in the Cascader field

Scenario: Select a country in the Select field, select 'Sao Paulo' in the Cascader field and a date in the DatePicker field with the form in the 'Vertical' position
Given that I am on the form page
And I select the 'Vertical' option in the Radio Button
When I select 'Brazil' in the Select field
And I select 'Sao Paulo' in the Cascader field
And I select '23/06/2023' in the DatePicker field
Then 'Brazil' should be selected in the Select field
And 'Sao Paulo' should be selected in the Cascader field
And '23/06/2023' should be selected in the DatePicker field

Scenario: Select a country in the Select field, adjust the Slider to 10, and insert a comment in the TextArea field with the form in the 'In Line' position
Given that I am on the form page
And I select the 'In Line' option in the Radio Button
When I select 'Brazil' in the Select field
And I adjust the Slider to the value 10
And I insert 'This is a test' into the TextArea field
Then 'Brazil' should be selected in the Select field
And the value 10 should be shown below the Slider
And 'This is a test' should be displayed in the TextArea field

Scenario: Select 'Color' in the TreeSelect field, select 'Campinas' in the Cascader field and a date in the DatePicker field with the form in the 'Horizontal' position
Given that I am on the form page
And I select the 'Horizontal' option in the Radio Button
When I select 'Color' in the TreeSelect field
And I select 'Campinas' in the Cascader field
And I select '23/06/2023' in the DatePicker field
Then 'Color' should be selected in the TreeSelect field
And 'Campinas' should be selected in the Cascader field
And '23/06/2023' should be selected in the DatePicker field

Scenario: Select 'Color' in the TreeSelect field, adjust the Slider to 10, and insert a comment in the TextArea field with the form in the 'Vertical' position
Given that I am on the form page
And I select the 'Vertical' option in the Radio Button
When I select 'Color' in the TreeSelect field
And I adjust the Slider to the value 10
And I insert 'This is a test' into the TextArea field
Then 'Color' should be selected in the TreeSelect field
And the value 10 should be shown below the Slider
And 'This is a test' should be displayed in the TextArea field

Scenario: Select 'Campinas' in the Cascader field, a date in the DatePicker field and adjust the Slider to 10 with the form in the 'In Line' position
Given that I am on the form page
And I select the 'In Line' option in the Radio Button
When I select 'Campinas' in the Cascader field
And I select '23/06/2023' in the DatePicker field
And I adjust the Slider to the value 10
Then 'Campinas' should be selected in the Cascader field
And '23/06/2023' should be selected in the DatePicker field
And the value 10 should be shown below the Slider

Scenario: Select a date in the DatePicker field, adjust the Slider to 10, and insert a comment in the TextArea field with the form in the 'Horizontal' position
Given that I am on the form page
And I select the 'Horizontal' option in the Radio Button
When I select '23/06/2023' in the DatePicker field
And I adjust the Slider to the value 10
And I insert 'This is a test' into the TextArea field
Then '23/06/2023' should be selected in the DatePicker field
And the value 10 should be shown below the Slider
And 'This is a test' should be displayed in the TextArea field

Scenario: Adjust the Slider to 10, insert a comment in the TextArea field, and press the Switch button with the form in the 'Vertical' position
Given that I am on the form page
And I select the 'Vertical' option in the Radio Button
When I adjust the Slider to the value 10
And I insert 'This is a test' into the TextArea field
And I press the Switch button
Then the value 10 should be shown below the Slider
And 'This is a test' should be displayed in the TextArea field
And the Switch button should show as active

Scenario: Interact with all functionalities in sequence
Given that I am on the form page
When I select the 'Horizontal' option in the Radio Button
And I insert 'Test123' into the Input field
And I select 'Brazil' in the Select field
And I select 'Color' in the TreeSelect field
And I select 'Campinas' in the Cascader field
And I select '23/06/2023' in the DatePicker field
And I adjust the Slider to the value 10
And I press the Switch button
And I insert 'This is a test' into the TextArea field
Then the form should change its position to horizontal
And the Input field should contain 'Test123'
And 'Brazil' should be selected in the Select field
And 'Color' should be selected in the TreeSelect field
And 'Campinas' should be selected in the Cascader field
And '23/06/2023' should be selected in the DatePicker field
And the value 10 should be shown below the Slider
And the Switch button should show as active
And 'This is a test' should be displayed in the TextArea field


Scenario: Select 'In Line' in the Radio Button and enter 'Test456' in the Input field
Given that I am on the form page
When I select the 'In Line' option in the Radio Button
And I enter 'Test456' in the Input field
Then the form should change its position to 'In Line'
And the Input field should contain 'Test456'

Scenario: Select 'Argentina' in the Select field and set the Slider to 15 with the form in the 'Vertical' position
Given that I am on the form page
And I select the 'Vertical' option in the Radio Button
When I select 'Argentina' in the Select field
And I set the Slider to the value 15
Then 'Argentina' should be selected in the Select field
And the value 15 should be shown below the Slider

Scenario: Select 'USA' in the Select field and activate the Switch button with the form in the 'Horizontal' position
Given that I am on the form page
And I select the 'Horizontal' option in the Radio Button
When I select 'USA' in the Select field
And I press the Switch button
Then 'USA' should be selected in the Select field
And the Switch button should show as active

Scenario: Select 'Sao Paulo' in the Cascader field and select '28/06/2023' in the DatePicker field with the form in the 'In Line' position
Given that I am on the form page
And I select the 'In Line' option in the Radio Button
When I select 'Sao Paulo' in the Cascader field
And I select '28/06/2023' in the DatePicker field
Then 'Sao Paulo' should be selected in the Cascader field
And '28/06/2023' should be selected in the DatePicker field

Scenario: Set the Slider to 5, press the Switch button and write a comment in the TextArea field with the form in the 'Horizontal' position
Given that I am on the form page
And I select the 'Horizontal' option in the Radio Button
When I set the Slider to the value 5
And I press the Switch button
And I write 'Second test' in the TextArea field
Then the value 5 should be shown below the Slider
And the Switch button should show as active
And 'Second test' should be displayed in the TextArea field


Scenario: Select 'Campinas' in the Cascader field, select '01/07/2023' in the DatePicker field and enter 'Test789' in the Input field with the form in the 'Vertical' position
Given that I am on the form page
And I select the 'Vertical' option in the Radio Button
When I select 'Campinas' in the Cascader field
And I select '01/07/2023' in the DatePicker field
And I enter 'Test789' in the Input field
Then 'Campinas' should be selected in the Cascader field
And '01/07/2023' should be selected in the DatePicker field
And the Input field should contain 'Test789'

Scenario: Select 'UK' in the Select field, set the Slider to 7 and write a comment in the TextArea field with the form in the 'In Line' position
Given that I am on the form page
And I select the 'In Line' option in the Radio Button
When I select 'UK' in the Select field
And I set the Slider to the value 7
And I write 'Third test' in the TextArea field
Then 'UK' should be selected in the Select field
And the value 7 should be shown below the Slider
And 'Third test' should be displayed in the TextArea field

Scenario: Enter 'Test321' in the Input field, select 'Sao Paulo' in the Cascader field and press the Switch button with the form in the 'Horizontal' position
Given that I am on the form page
And I select the 'Horizontal' option in the Radio Button
When I enter 'Test321' in the Input field
And I select 'Sao Paulo' in the Cascader field
And I press the Switch button
Then the Input field should contain 'Test321'
And 'Sao Paulo' should be selected in the Cascader field
And the Switch button should show as active

Scenario: Set the Slider to 12, write a comment in the TextArea field and select '04/07/2023' in the DatePicker field with the form in the 'Vertical' position
Given that I am on the form page
And I select the 'Vertical' option in the Radio Button
When I set the Slider to the value 12
And I write 'Fourth test' in the TextArea field
And I select '04/07/2023' in the DatePicker field
Then the value 12 should be shown below the Slider
And 'Fourth test' should be displayed in the TextArea field
And '04/07/2023' should be selected in the DatePicker field

Scenario: Select 'Canada' in the Select field, press the Switch button and select '07/07/2023' in the DatePicker field with the form in the 'In Line' position
Given that I am on the form page
And I select the 'In Line' option in the Radio Button
When I select 'Canada' in the Select field
And I press the Switch button
And I select '07/07/2023' in the DatePicker field
Then 'Canada' should be selected in the Select field
And the Switch button should show as active
And '07/07/2023' should be selected in the DatePicker field


Scenario: Select 'USA' in the Select field, set the Slider to 18 and select '09/07/2023' in the DatePicker field with the form in the 'Horizontal' position
Given that I am on the form page
And I select the 'Horizontal' option in the Radio Button
When I select 'USA' in the Select field
And I set the Slider to the value 18
And I select '09/07/2023' in the DatePicker field
Then 'USA' should be selected in the Select field
And the value 18 should be shown below the Slider
And '09/07/2023' should be selected in the DatePicker field

Scenario: Select 'Color' in the TreeSelect field, select '11/07/2023' in the DatePicker field and write a comment in the TextArea field with the form in the 'Vertical' position
Given that I am on the form page
And I select the 'Vertical' option in the Radio Button
When I select 'Color' in the TreeSelect field
And I select '11/07/2023' in the DatePicker field
And I write 'Fifth test' in the TextArea field
Then 'Color' should be selected in the TreeSelect field
And '11/07/2023' should be selected in the DatePicker field
And 'Fifth test' should be displayed in the TextArea field

Scenario: Enter 'Test456' in the Input field, select 'Sao Paulo' in the Cascader field and set the Slider to 14 with the form in the 'In Line' position
Given that I am on the form page
And I select the 'In Line' option in the Radio Button
When I enter 'Test456' in the Input field
And I select 'Sao Paulo' in the Cascader field
And I set the Slider to the value 14
Then the Input field should contain 'Test456'
And 'Sao Paulo' should be selected in the Cascader field
And the value 14 should be shown below the Slider

Scenario: Select 'Color' in the TreeSelect field, press the Switch button and write a comment in the TextArea field with the form in the 'Horizontal' position
Given that I am on the form page
And I select the 'Horizontal' option in the Radio Button
When I select 'Color' in the TreeSelect field
And I press the Switch button
And I write 'Sixth test' in the TextArea field
Then 'Color' should be selected in the TreeSelect field
And the Switch button should show as active
And 'Sixth test' should be displayed in the TextArea field

Scenario: Select 'UK' in the Select field, select 'Campinas' in the Cascader field and select '15/07/2023' in the DatePicker field with the form in the 'Vertical' position
Given that I am on the form page
And I select the 'Vertical' option in the Radio Button
When I select 'UK' in the Select field
And I select 'Campinas' in the Cascader field
And I select '15/07/2023' in the DatePicker field
Then 'UK' should be selected in the Select field
And 'Campinas' should be selected in the Cascader field
And '15/07/2023' should be selected in the DatePicker field


Scenario: Enter 'Test789' in the Input field, set the Slider to 15 and write a comment in the TextArea field with the form in the 'In Line' position
Given that I am on the form page
And I select the 'In Line' option in the Radio Button
When I enter 'Test789' in the Input field
And I set the Slider to the value 15
And I write 'Seventh test' in the TextArea field
Then the Input field should contain 'Test789'
And the value 15 should be shown below the Slider
And 'Seventh test' should be displayed in the TextArea field

Scenario: Select 'Germany' in the Select field, press the Switch button and select '17/07/2023' in the DatePicker field with the form in the 'Horizontal' position
Given that I am on the form page
And I select the 'Horizontal' option in the Radio Button
When I select 'Germany' in the Select field
And I press the Switch button
And I select '17/07/2023' in the DatePicker field
Then 'Germany' should be selected in the Select field
And the Switch button should show as active
And '17/07/2023' should be selected in the DatePicker field

Scenario: Select 'Color' in the TreeSelect field, set the Slider to 16 and select 'Sao Paulo' in the Cascader field with the form in the 'Vertical' position
Given that I am on the form page
And I select the 'Vertical' option in the Radio Button
When I select 'Color' in the TreeSelect field
And I set the Slider to the value 16
And I select 'Sao Paulo' in the Cascader field
Then 'Color' should be selected in the TreeSelect field
And the value 16 should be shown below the Slider
And 'Sao Paulo' should be selected in the Cascader field

Scenario: Interact with all functionalities in sequence #2
Given that I am on the form page
When I select the 'In Line' option in the Radio Button
And I enter 'TestAll2' in the Input field
And I select 'UK' in the Select field
And I select 'Color' in the TreeSelect field
And I select 'Sao Paulo' in the Cascader field
And I select '19/07/2023' in the DatePicker field
And I set the Slider to the value 16
And I press the Switch button
And I write 'Eighth test' in the TextArea field
Then the form should change its position to 'In Line'
And the Input field should contain 'TestAll2'
And 'UK' should be selected in the Select field
And 'Color' should be selected in the TreeSelect field
And 'Sao Paulo' should be selected in the Cascader field
And '19/07/2023' should be selected in the DatePicker field
And the value 16 should be shown below the Slider
And the Switch button should show as active
And 'Eighth test' should be displayed in the TextArea field


Scenario: Select 'France' in the Select field, select '20/07/2023' in the DatePicker field, and set the Slider to 19 with the form in the 'Horizontal' position
Given that I am on the form page
And I select the 'Horizontal' option in the Radio Button
When I select 'France' in the Select field
And I select '20/07/2023' in the DatePicker field
And I set the Slider to the value 19
Then 'France' should be selected in the Select field
And '20/07/2023' should be selected in the DatePicker field
And the value 19 should be shown below the Slider

Scenario: Enter 'Test891' in the Input field, select 'Color' in the TreeSelect field, and select 'Campinas' in the Cascader field with the form in the 'Vertical' position
Given that I am on the form page
And I select the 'Vertical' option in the Radio Button
When I enter 'Test891' in the Input field
And I select 'Color' in the TreeSelect field
And I select 'Campinas' in the Cascader field
Then the Input field should contain 'Test891'
And 'Color' should be selected in the TreeSelect field
And 'Campinas' should be selected in the Cascader field

Scenario: Select 'Japan' in the Select field, press the Switch button and write a comment in the TextArea field with the form in the 'In Line' position
Given that I am on the form page
And I select the 'In Line' option in the Radio Button
When I select 'Japan' in the Select field
And I press the Switch button
And I write 'Ninth test' in the TextArea field
Then 'Japan' should be selected in the Select field
And the Switch button should show as active
And 'Ninth test' should be displayed in the TextArea field

Scenario: Select 'Color' in the TreeSelect field, select '22/07/2023' in the DatePicker field, and set the Slider to 20 with the form in the 'Horizontal' position
Given that I am on the form page
And I select the 'Horizontal' option in the Radio Button
When I select 'Color' in the TreeSelect field
And I select '22/07/2023' in the DatePicker field
And I set the Slider to the value 20
Then 'Color' should be selected in the TreeSelect field
And '22/07/2023' should be selected in the DatePicker field
And the value 20 should be shown below the Slider

Scenario: Enter 'Test1234' in the Input field, select 'Australia' in the Select field, and select 'Sao Paulo' in the Cascader field with the form in the 'Vertical' position
Given that I am on the form page
And I select the 'Vertical' option in the Radio Button
When I enter 'Test1234' in the Input field
And I select 'Australia' in the Select field
And I select 'Sao Paulo' in the Cascader field
Then the Input field should contain 'Test1234'
And 'Australia' should be selected in the Select field
And 'Sao Paulo' should be selected in the Cascader field