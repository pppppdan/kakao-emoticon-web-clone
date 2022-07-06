package kakao.persistence;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;

import kakao.domain.KakaoLoginDTO;

public interface KakaoLoginDAOImpl {

	public ArrayList<KakaoLoginDTO> loginCheck( String id, String pwd , Connection con) throws SQLException;

	

}