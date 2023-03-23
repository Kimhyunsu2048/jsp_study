import java.time.LocalDateTime;

import commons.Status;
import models.Kanban;

public class Ex01 {

	public static void main(String[] args) {
		/**
		Kanban kanban = new Kanban();
		kanban.setId(100);
		kanban.setSubject("제목!");
		kanban.setStatus(Status.PROGRESS);
		kanban.setRegDt(LocalDateTime.now());
		*/
		
		Kanban kanban2 = Kanban.builder()
											.id(100)
											.status(Status.PROGRESS)
											.subject("제목1")
											.regDt(LocalDateTime.now())
											.build();  // 메서드 체이닝
	}

}
