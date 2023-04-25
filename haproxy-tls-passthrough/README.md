## Notes
- Example Config:
```properties
bootstrap.servers=<REDACTED>:9092
security.protocol=SASL_SSL
sasl.mechanisms=PLAIN
sasl.username=<REDACTED>
sasl.password=<REDACTED>
```
- Use `kcat` to get list of brokers: 
```bash
kcat -F kcat.conf -L | grep -w '^  broker [0-9]\+' | awk -F ' at ' '{print $2}' | cut -d '(' -f1 | sort
```
