# soar-docker
xiaomi soar docker image env

## run command
```bash
docker run --rm frontgoo/soar-docker:0.1.0 /root/soar -query "SELECT subject_code, subject_name, count(1) FROM ads_crm_customer_first_order_time_ds WHERE
subject_name like '%xxx%' group by subject_code"
```
