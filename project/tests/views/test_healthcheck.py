from django.test import TestCase
from django.urls import reverse

class HealthcheckTests(TestCase):
    def test_healthcheck(self):
        response = self.client.get('/api/healthcheck/')
        self.assertEqual(response.status_code, 200)
        self.assertJSONEqual(response.content, {'status': 'ok!'})
