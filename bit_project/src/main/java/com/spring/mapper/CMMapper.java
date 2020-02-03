package com.spring.mapper;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.spring.community.AnswerVO;
import com.spring.community.CommentVO;
import com.spring.community.CommunityVO;

public interface CMMapper {
	/* 게시글 */
	ArrayList<CommunityVO> getCommunity(CommunityVO cmvo);
	List<CommunityVO> getCM(@Param("category") String category, @Param("start") int start, @Param("end") int end);
	
	/*필터*/
	List<CommunityVO> filter1(@Param("category") String category, @Param("start") int start, @Param("end") int end);
	List<CommunityVO> filter2(@Param("category") String category, @Param("start") int start, @Param("end") int end);
	List<CommunityVO> filter3(@Param("category") String category, @Param("start") int start, @Param("end") int end);
	
	/*검색*/
	public List<CommunityVO> getCMsearch(@Param("search_Data") String search_Data, @Param("category") String category, @Param("start") int start, @Param("end") int end);
	public List<CommunityVO> getuserSearch(@Param("nickname") String nickname, @Param("start") int start, @Param("end") int end);
	int getCommunityCount(String category);
	public CommunityVO detailCommunity(int board_num);
	public int updateCount(int board_num);
	
	
	
	/* 댓글 */
	List<CommentVO> getCO(@Param("board_num") int board_num, @Param("start") int start, @Param("end") int end);
	int getCommentCount(int num);
	int writeCO(CommentVO covo);
	int updateCO(@Param("comment_num") int comment_num, @Param("content") String content);
	int deleteCO(@Param("comment_num") int comment_num);
	
	
	
	/*대댓글*/
	int writeAnswer(AnswerVO answervo);
	List<AnswerVO> getAnswer(int comment_num);
	int updateAnswer(@Param("answer_num") int answer_num, @Param("content") String content);
	int deleteAnswer(@Param("answer_num") int answer_num);
}
