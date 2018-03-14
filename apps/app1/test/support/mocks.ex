Mox.defmock(App1.FirstMock,   for: App1.FirstBehaviour)
Mox.defmock(App1.SecondMock,  for: App1.SecondBehaviour)
Mox.defmock(App1.DoubleMock,  for: [App1.FirstBehaviour, App1.SecondBehaviour])