package io.reflectoring.buckpal.account.adapter.out.persistence;

import static javax.persistence.GenerationType.SEQUENCE;

import java.time.LocalDateTime;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Table(name = "tb_activity")
@Data
@AllArgsConstructor
@NoArgsConstructor
class ActivityJpaEntity {

  @Id
  @SequenceGenerator(
      name = "sq_activity",
      sequenceName = "sq_activity",
      allocationSize = 1,
      initialValue = 1)
  @GeneratedValue(strategy = SEQUENCE, generator = "sq_activity")
  @Column(name = "id_activity")
  private Long id;

  @Column(name = "transaction_datetime")
  private LocalDateTime timestamp;

  @Column(name = "owner_account_id")
  private Long ownerAccountId;

  @Column(name = "source_account_id")
  private Long sourceAccountId;

  @Column(name = "target_account_id")
  private Long targetAccountId;

  @Column(name = "amount")
  private Long amount;
}
