from django.db import models

class Category(models.Model):
    name = models.CharField(max_length=100, null=False)

class Location(models.Model):
    name = models.CharField(max_length=100, null=False)
    latitude = models.FloatField()
    longitude = models.FloatField()

class Crime(models.Model):
    title = models.CharField(max_length=200, null=False)
    description = models.TextField(null=True)  # Allow NULL for optional fields
    date = models.DateField(null=False)
    category = models.ForeignKey(Category, on_delete=models.CASCADE)
    location = models.ForeignKey(Location, on_delete=models.CASCADE)
