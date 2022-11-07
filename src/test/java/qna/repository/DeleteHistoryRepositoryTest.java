package qna.repository;

import static org.assertj.core.api.Assertions.assertThat;
import static org.junit.jupiter.api.Assertions.assertAll;

import java.time.LocalDateTime;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;
import qna.domain.ContentType;
import qna.domain.DeleteHistory;
import qna.domain.DeleteHistoryRepository;

@DisplayName("DeleteHistory_관련_테스트")
@DataJpaTest
public class DeleteHistoryRepositoryTest {
    @Autowired
    private DeleteHistoryRepository deleteHistoryRepository;

    @DisplayName("저장_확인")
    @Test
    void save_01() {
        DeleteHistory dummyData = new DeleteHistory(ContentType.QUESTION, 1L, 1L, LocalDateTime.now());
        DeleteHistory answer = deleteHistoryRepository.save(dummyData);
        assertAll(
                () -> assertThat(answer.getId()).isNotNull(),
                () -> assertThat(answer.getContentId()).isEqualTo(dummyData.getContentId()),
                () -> assertThat(answer.getDeletedById()).isEqualTo(dummyData.getDeletedById()),
                () -> assertThat(answer.getDeletedById()).isEqualTo(dummyData.getDeletedById())
        );
    }
}
