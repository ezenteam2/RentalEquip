CREATE TABLE notice_list(
	code NUMBER PRIMARY KEY,
	title varchar2(200),
	reg_date date,
	img varchar2(200),
	content varchar2(1000),
	admin NUMBER
);

CREATE SEQUENCE notice_no
INCREMENT BY 1
START WITH 1
MINVALUE 1
MAXVALUE 1000;


INSERT INTO notice_list values(notice_no.nextval, '[����]���� ���� �ȳ�', DATE(2020.02.13), '../img/�����.png', '<p> �ȳ��ϼ���, ��Ż�Դϴ�.</p>
<p>2020�� 2�� 9�� �������� �������� �۰� ��(Web)���� �α����� �ȵǰų� ī�װ�, ���� �� ������ ǥ�õ��� �ʴ� �� ������ �߻��߽��ϴ�.</p>
<p>���� ������ �ľ��Ͽ����� ���� ��ġ�� �� �����Դϴ�.

���� �ش� ������ �ذ��ϱ� ���ؼ��� ĳ�õ����͸� �����ؾ� �մϴ�.
                                    
�ȵ���̵�, iOS ����� �е��� �Ʒ� ����� ���� �� ������Ʈ �� ĳ�� ���� �Ŀ� �ٽ� �̿����ֽñ� ��Ź�帳�ϴ�.</p>
<p>', 1);