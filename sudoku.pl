sudoku(Puzzle, Solution) :-
  Solution = Puzzle,

  fd_domain(Puzzle, 1, 4),

  Puzzle = [S11, S12, S21, S22, S31, S32, S41, S42, S13, S14, S23, S24, S33, S34, S43, S44],

  Row1 = [S11, S12, S13, S14], fd_all_different(Row1),
  Row2 = [S21, S22, S23, S24], fd_all_different(Row2),
  Row3 = [S31, S32, S33, S34], fd_all_different(Row3),
  Row4 = [S41, S42, S43, S44], fd_all_different(Row4),

  Col1 = [S11, S21, S31, S41], fd_all_different(Col1),
  Col2 = [S12, S22, S32, S42], fd_all_different(Col2),
  Col3 = [S13, S23, S33, S43], fd_all_different(Col3),
  Col4 = [S14, S24, S34, S44], fd_all_different(Col4),

  Square1 = [S11, S12, S21, S22], fd_all_different(Square1),
  Square2 = [S13, S14, S23, S24], fd_all_different(Square2),
  Square3 = [S31, S32, S41, S42], fd_all_different(Square3),
  Square4 = [S33, S34, S43, S44], fd_all_different(Square4).
