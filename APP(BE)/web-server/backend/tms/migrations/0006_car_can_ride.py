# Generated by Django 4.0 on 2022-09-26 13:57

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('tms', '0005_notification_battalion_receiver_and_more'),
    ]

    operations = [
        migrations.AddField(
            model_name='car',
            name='can_ride',
            field=models.PositiveIntegerField(default=4),
        ),
    ]