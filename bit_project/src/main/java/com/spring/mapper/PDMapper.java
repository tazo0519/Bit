package com.spring.mapper;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.spring.product.ProductVO;

public interface PDMapper {
	void prAdd(ProductVO pdVO);	//상품 등록
	List<ProductVO> allSearch();//아직 쓰진 않지만 전체 검색
	
	//startSearch, scrollSearch -> 카테고리가 null일 경우. default 세팅
	List<ProductVO> startSearch();//상품 페이지 첫 접속시 8개 상품 띄워줌
	List<ProductVO> scrollSearch(@Param("pno") int pno);//카테고리 null일 경우 pno만 받아서 전체 출력
	
	//카테고리 선택 후 적용 시 해당 카테고리 데이터 8개 출력
	//List<ProductVO> selectList(@Param("pno") int pno, @Param("cateMap1") HashMap<String, String> cateMap1, @Param("cateMap2") HashMap<String, String> cateMap2, @Param("cateMap3") HashMap<String, String> cateMap3);
	//List<ProductVO> filterSearch(@Param("category_l") String category_l, @Param("category_m") String category_m, @Param("category_s") String category_s);
	//스크롤 내리면 카테고리 읽어온 뒤 파라미터로 받은 pno+1 ~ pno+8까지 데이터 추가
	List<ProductVO> filterScroll(@Param("pno") int pno, @Param("cateMap1") HashMap<String, String> cateMap1, @Param("cateMap2") HashMap<String, String> cateMap2, @Param("cateMap3") HashMap<String, String> cateMap3);
	ProductVO getProductDetail(@Param("product_num") int product_num);
}
