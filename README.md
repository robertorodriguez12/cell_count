## Count My Neighbors

- This repository was created in response to a technical challenge that was given to me. 
- This exercise consists of a simulation with a 3x3 grid. Within the grid there are cells that are assigned a random `Active` status. 
- This program will count the number of active neighbors around the center cell.
- The center cell has eight neighbors , which are the cells that are horizontally, vertically, or diagonally adjacent.

### Version
![](https://img.shields.io/badge/Ruby-2.5.3-orange)

### Setup

- Fork this repository on to your local computer
- Navigate into the `CELL_COUNT` repository and run `gem install mocha` in your terminal. This gem will be needed for testing purposes

### Testing

- Navigate into the testing folder, there are three files but only two tests
- You can run these tests by entering `ruby <file_name>.rb` and pressing enter
    - Example: ruby cell_test.rb

### Running the Program
- Navigate into the `lib` folder and enter the following command in your terminal `ruby runner.rb`
- You will see output in the terminal that will look like this: "There are 4 active neighbors"
    - P.S: The number of active neighbors will likely be different each time you execute the above command since a cell's active status is assigned at random

### Screen shots from program execution
- 1st iteration
![Screen Shot 2021-02-17 at 1 07 41 PM](https://user-images.githubusercontent.com/56448912/108273537-eb00d000-7130-11eb-8ec7-05496def099f.png)
- 2nd iteration
![Screen Shot 2021-02-17 at 1 07 25 PM](https://user-images.githubusercontent.com/56448912/108273621-04a21780-7131-11eb-93c0-b4a3ff998c6f.png)
- 3rd iteration
![Screen Shot 2021-02-17 at 1 07 01 PM](https://user-images.githubusercontent.com/56448912/108273675-1e435f00-7131-11eb-84ec-63a4b3cb5e01.png)
