SudokuFetcher::Application.routes.draw do
  root :to => 'sudoku#index'
  match 'sudoku(.:format)' => 'sudoku#index'
end
