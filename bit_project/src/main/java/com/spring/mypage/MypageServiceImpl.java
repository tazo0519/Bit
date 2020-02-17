package com.spring.mypage;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.mapper.MyMapper;
import com.spring.payment.SubscriptionVO;
import com.spring.product.ProductShareVO;
import com.spring.product.SettlementVO;
import com.spring.tazo.ShareWatingListVO;

@Service
public class MypageServiceImpl implements MypageService {
	@Autowired
	SqlSession sqlSession;

	@Override
	public List<BookmarkVO> getMyPageBookMark(String email) throws Exception {
		List<BookmarkVO> booklist = null;
		try {
			MyMapper myMapper = sqlSession.getMapper(MyMapper.class);
			booklist = myMapper.getMyPageBookMark(email);
			return booklist;
		} catch (Exception e) {
			throw new Exception("북마크 리스트 출력 실패", e);
		}
	}

	@Override
	public List<WishlistVO> getMyPageWishList(String email) throws Exception {
		List<WishlistVO> wishlist = null;
		try {
			MyMapper myMapper = sqlSession.getMapper(MyMapper.class);
			wishlist = myMapper.getMyPageWishList(email);
			return wishlist;
		} catch (Exception e) {
			throw new Exception("위시리스트 리스트 출력 실패", e);
		}
	}

	@Override
	public List<ReservationVO> getMyPageReservation(String email) throws Exception {
		List<ReservationVO> reserlist = null;
		try {
			MyMapper myMapper = sqlSession.getMapper(MyMapper.class);
			reserlist = myMapper.getMyPageReservation(email);
			return reserlist;
		} catch (Exception e) {
			throw new Exception("예약 리스트 출력 실패", e);
		}
	}

	@Override
	public List<ShareWatingListVO> getMyPageShare(String email) throws Exception {
		List<ShareWatingListVO> shareList = null;
		try {
			MyMapper myMapper = sqlSession.getMapper(MyMapper.class);
			shareList = myMapper.getMyPageShare(email);
			return shareList;
		} catch (Exception e) {
			throw new Exception("개인 쉐어 리스트 출력 실패", e);
		}
	}

	@Override
	public List<ProductShareVO> getMyPageShare2(String email) throws Exception {
		List<ProductShareVO> shareList = null;
		try {
			MyMapper myMapper = sqlSession.getMapper(MyMapper.class);
			shareList = myMapper.getMyPageShare2(email);
			return shareList;
		} catch (Exception e) {
			throw new Exception("개인 쉐어 리스트 출력 실패", e);
		}
	}

	@Override
	public void getMyPageShareSettle(String email, int settle, int share_num) throws Exception {
		try {
			MyMapper myMapper = sqlSession.getMapper(MyMapper.class);
			myMapper.getMyPageShareSettle(email, settle, share_num);
		} catch (Exception e) {
			throw new Exception("개인 쉐어 정산 실패", e);
		}
	}

	@Override
	public SettlementVO getShareJoin(int share_num) throws Exception{
		try {
			SettlementVO psVO = new SettlementVO();
			MyMapper myMapper = sqlSession.getMapper(MyMapper.class);
			psVO = myMapper.getShareJoin(share_num);
			return psVO;
		} catch (Exception e) {
			throw new Exception("개인 쉐어 정산 실패", e);
		}
	}

	@Override
	public void addMyPageShareSettle(SettlementVO sVO) throws Exception {
		try {
			SettlementVO psVO = new SettlementVO();
			MyMapper myMapper = sqlSession.getMapper(MyMapper.class);
			myMapper.addMyPageShareSettle(sVO);
		} catch (Exception e) {
			throw new Exception("개인 쉐어 정산 실패", e);
		}
	}

	@Override
	public void updateShareJoin(int share_num, int settle) throws Exception {
		try {
			MyMapper myMapper = sqlSession.getMapper(MyMapper.class);
			myMapper.updateShareJoin(share_num, settle);
		} catch (Exception e) {
			throw new Exception("product_share 적립금 차감 실패", e);
		}
	}
	
	
	
	
	@Override
	public PStateVO getProductState(PStateVO vo) throws Exception {
		try {
			MyMapper myMapper = sqlSession.getMapper(MyMapper.class);
			PStateVO vo2 = myMapper.getProductState(vo);
			return vo2;
		} catch (Exception e) {
			throw new Exception("상품상태 조회 실패", e);
		}
	}
	
	@Override
	public int checkPS(PStateVO vo) throws Exception {
		try {
			MyMapper myMapper = sqlSession.getMapper(MyMapper.class);
			int check = myMapper.checkPS(vo);
			return check;
		} catch (Exception e) {
			throw new Exception("상품상태 카운트 조회 실패", e);
		}
	}
	
	@Override
	public int checkReserve(String email) throws Exception {
		try {
			MyMapper myMapper = sqlSession.getMapper(MyMapper.class);
			int check = myMapper.checkReserve(email);
			return check;
		} catch (Exception e) {
			throw new Exception("예약상품 조회 실패", e);
		}
	}
	
	@Override
	public int getReserve(String email) throws Exception {
		try {
			MyMapper myMapper = sqlSession.getMapper(MyMapper.class);
			int rnum = myMapper.getReserve(email);
			return rnum;
		} catch (Exception e) {
			throw new Exception("예약순번 조회 실패", e);
		}
		
	}

	

	
	
}
