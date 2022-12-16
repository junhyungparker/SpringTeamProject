package com.example.board;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import java.util.List;

@Repository
public class BoardDAO {

	@Autowired
	SqlSession sqlSession;

	public int insertBoard(BoardVO vo) {
		int count = sqlSession.insert("Board.insertBoard", vo);
		return count;
	}

	// 글 삭제
	public int deleteBoard(int seq) {
		int count = sqlSession.delete("Board.deleteBoard", seq);
		return count;
	}

	public int updateBoard(BoardVO vo) {
		int count = sqlSession.update("Board.updateBoard", vo);
		return count;
	}

	public BoardVO getBoard(int seq) {
		BoardVO one = sqlSession.selectOne("Board.getBoard", seq);
		return one;
	}

	public List<BoardVO> getBoardList() {
		List<BoardVO> list = sqlSession.selectList("Board.getBoardList");
		return list;
	}
}
