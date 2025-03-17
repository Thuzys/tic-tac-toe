# Tic-Tac-Toe

A fully functional Tic-Tac-Toe game implemented in Prolog. This project allows players to play a customizable board size game of Tic-Tac-Toe, with features such as win detection, draw detection, and a clean modular design.

## Features

- **Customizable Board Size**: Play on any square board size (e.g., 3x3, 4x4, etc.).
- **Win Detection**: Checks for wins in rows, columns, and diagonals.
- **Draw Detection**: Detects when the board is full and no moves are left.
- **Modular Design**: The code is organized into modules for better readability and maintainability.
- **Unit Tests**: Comprehensive test coverage for all major functionalities.

## Project Structure

<details>
    <summary>
        Click to expand the project structure
    </summary>
    <code>
        src<br>
        ├── main<br>
        │   ├── tic_tac_toe.pl<br>
        │   └── board<br>
        │       ├── board.pl<br>
        │       ├── board_full.pl<br>
        │       ├── display_board.pl<br>
        │       ├── board_initializer.pl<br>
        │       ├── board_winner.pl<br>
        │   └── checks<br>
        │       ├── all_same.pl<br>
        │       ├── check_diagonal.pl<br>
        │       ├── check_column.pl<br>
        │       ├── check_row.pl<br>
        │       ├── checks.pl<br>
        │   └── getter_setter<br>
        │       ├── getter_setter.pl<br>
        │       ├── is_empty.pl<br>
        │       ├── setter.pl<br>
        ├── test<br>
        │   └── board<br>
        │       ├── board_winner_test.pl<br>
        │       ├── is_full_test.pl<br>
        │   └── checks<br>
        │       ├── check_diagonal_test.pl<br>
        │       ├── check_column_test.pl<br>
        │       ├── check_row_test.pl<br>
        │   └── getter_setter<br>
        │       ├── is_empty_test.pl<br>
        │       ├── setter_test.pl<br>
        │   └── run_tests.pl<br>
    </code>
</details>

## How to Play

1. Clone the repository.
```bash
git clone https://github.com/Thuzys/tic-tac-toe.git
cd tic-tac-toe
```
2. Go to correct directory.
```bash
cd src/main
```
3. Open the Prolog interpreter.
e.g. on MacOS:
```bash
swipl
```
4. Load the main file.
```prolog
?- [tic_tac_toe].
```
5. Start the game.
```prolog
?- play.
```
6. Follow the instructions on the screen to play the game.

## How to Run Tests

1. Go to the test directory.
```bash
cd src/test
```
2. Open the Prolog interpreter.
e.g. on MacOS:
```bash
swipl
```
3. Load the test file.
```prolog
?- [run_tests].
```
4. Run the tests.
```prolog
?- run_tests.
```
