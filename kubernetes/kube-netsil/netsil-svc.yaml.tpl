apiVersion: v1
kind: Service
metadata:
  namespace: netsil
  name: netsil
spec:
  selector:
    app: netsil
    component: netsil
  ports:
    - name: http
      port: 80
      nodePort: 31000
    - name: https
      port: 443
      nodePort: 31443
    - name: port2001
      port: 2001
    - name: port2003
      port: 2003
    - name: port2003udp
      port: 2003
      protocol: UDP
  type: #SERVICE_TYPE#