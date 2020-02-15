package com.spring.mapper;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.spring.mypage.PStateVO;
import com.spring.payment.SubscriptionVO;
import com.spring.product.SettlementVO;
import com.spring.tazo.ShareWatingListVO;

public interface SubscribePaymentMapper {

	List<ShareWatingListVO> getShareList();
	void shareWaitingListAcceptOrDeny(@Param("waiting_num") int waiting_num, @Param("chk_num") int chk_num);
	List<ShareWatingListVO> getShareAcceptList();
	List<SettlementVO> getSettleList();
	List<PStateVO> getReturnList();
	List<SubscriptionVO> getEmail();
	List<Integer> getWish(@Param("email") String email);
	void insertWish(@Param("randomPnum") int randomPnum, @Param("subscribe_num") int subscribe_num, @Param("date") Date date);
	List<PStateVO> pickupList();
	void pickAccept(@Param("state_num") int state_num);
}
