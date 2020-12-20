package com.cafe24.iducs.board;

import java.util.List;

public interface BoardDAO {
	public List<BoardDTO> boardList(BoardDTO dto);
	
	public BoardDTO boardRead(BoardDTO dto);
	
	public void boardWriteProc(BoardDTO dto);
}
