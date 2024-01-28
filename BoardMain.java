package jdbc_p;

import java.util.ArrayList;

public class BoardMain {

	public static void main(String[] args) {
		System.out.println("실행좀 해라");
		ArrayList<BoardDTO> boardarr = new BoardDAO().list();
		
		for (BoardDTO dto : boardarr) {
			System.out.println(dto);
		}

	}

}
