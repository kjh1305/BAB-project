package com.cafe24.iducs.board;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class BoardDAOImpl implements BoardDAO {
	@Autowired
	private SqlSession sqlSession;
	
	private final String namespace = "com.cafe24.iducs.mappers.boardMapper";
	
	@Override
	public List<BoardDTO> boardList(BoardDTO dto) {
		List<BoardDTO> boardList = sqlSession.selectList(namespace + ".selectBoardList", dto);

		return boardList;
	}
	
	@Override
	public BoardDTO boardRead(BoardDTO dto) {
		BoardDTO readDto = sqlSession.selectOne(namespace + ".selectBoard", dto);
		
		return readDto;
	}
	
	@Override
	public void boardWriteProc(BoardDTO dto) {
		sqlSession.insert(namespace + ".insertBoard", dto);
	}
}
