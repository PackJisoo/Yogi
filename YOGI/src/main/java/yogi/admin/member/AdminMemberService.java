package yogi.admin.member;

import java.util.List;
import java.util.Map;

public interface AdminMemberService {

	//회원 전체 리스트
	List<Map<String, Object>> list(Map<String, Object> map);
	
	//회원 검색
	List<Map<String, Object>> searchList(Map<String, Object> map);
	
	//회원 비활성화
	void memberInactive(Map<String, Object> map);
}