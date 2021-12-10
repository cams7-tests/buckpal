package io.reflectoring.buckpal.account.adapter.out.persistence;

import static javax.persistence.GenerationType.SEQUENCE;

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
@Table(name = "tb_account")
@Data
@AllArgsConstructor
@NoArgsConstructor
class AccountJpaEntity {

  @Id
  @SequenceGenerator(
      name = "sq_account",
      sequenceName = "sq_account",
      allocationSize = 1,
      initialValue = 1)
  @GeneratedValue(strategy = SEQUENCE, generator = "sq_account")
  @Column(name = "id_account")
  private Long id;
}
