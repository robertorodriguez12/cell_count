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
- This Repository uses the ```Matrix``` Gem. According to ruby-docs and Google searches, there is no need to install this onto your system. If you want to see where it is being required, it is on line 3 of the Grid.rb  file inside the lib folder. 

### Testing

- Navigate into the testing folder, there are four files three of those are tests
- You can run these tests by entering `ruby <file_name>.rb` and pressing enter
    - Example: ruby cell_test.rb

### Running the Program
- Navigate into the `lib` folder and enter the following command in your terminal `ruby runner.rb`
- You will see output in the terminal that will look like this: "There are 4 active neighbors"
    - P.S: The number of active neighbors will likely be different each time you execute the above command since a cell's active status is assigned at random