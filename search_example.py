from ldap3 import ALL, Connection, Server


def get_ldap(password):
    address = 'openldap:1389'
    dn = f'cn=admin,dc=wsskorea,dc=cloud'
    server = Server(address, get_info=ALL)
    conn = Connection(server, dn, password, auto_bind=True)

    conn.search('dc=wsskorea,dc=cloud', '(mail=james1011@wsskorea.cloudd)')
    print(conn.entries)
    print(len(conn.entries))


get_ldap('admin12345!@')
